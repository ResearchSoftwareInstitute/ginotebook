var SidebarPatchView = Backbone.Marionette.ItemView.extend({
    template: "#sidebar-patch-template",
    tagName: "tr",
    ui: {
       gamma : ".gamma",
       remove : ".remove"
    },
    onRender: function() {
       var me = this;

       this.ui.gamma.change(function() {
          console.log('gamma changed');
          me.model.set('gamma', parseFloat(me.ui.gamma.val()));
          me.model.attributes.feature.attributes.gamma = parseFloat(me.ui.gamma.val());
          receivers.redraw();
       });

       this.ui.remove.click(function() {
            patchCollection.remove(me.model);
       });
    }
});

var DonorView = Backbone.Marionette.ItemView.extend({
    template: "#donor-template",
    tagName: 'h6'
});

var ControlPanelView = Backbone.Marionette.ItemView.extend({
    el: "#control-panel",
    template: "#controls",
    ui: {
        commit : "#save-flowtable",
        revert : "#revert-flowtable",
        addReceiver : "#add-receiver"
    },
    onRender: function() {
        this.ui.commit.click(function() {
            console.log("committing changes to flow table");
            // make a call out to save all the receivers to the current patch id
            var pc = patchCollection.map(function(e) { 
                // create a clone so we don't alter the original receiver point
                var geometry = e.attributes.feature.geometry.clone()
                geometry = geometry.transform(prj.internalProjection, prj.externalProjection);

                return {
                    "geometry" : {
                        "type": "Point",
                        "coordinates": [geometry.x, geometry.y]
                    },
                    "type": "Feature",
                    "properties": {
                        'total_gamma': null,
                        'patchId' : e.attributes.patchId,
                        'hillId' : e.attributes.hillId,
                        'zoneId' : e.attributes.zoneId,
                        'gamma' : e.attributes.gamma,
                    }
                }    
            });

            // create a clone so we don't alter the original donor point
            var donorGeom = donor.get('feature')['geometry'].clone();
            donorGeom = donorGeom.transform(prj.internalProjection, prj.externalProjection);

            var allUpdates = [];
            var donorUpdates = { 
                "geometry": {
                    "type": "Point",
                    "coordinates": [donorGeom.x, donorGeom.y],    
                },
                "type": "Feature",
                "properties": {
                    'numAdjacent': donor.get('feature')['attributes'].numAdjacent, 
                    'patchId': donor.get('patchId'),
                    'landType': donor.get('feature')['attributes'].landType,
                    'area': donor.get('feature')['attributes'].area,
                    'accumArea': donor.get('feature')['attributes'].accumArea,
                    'hillId': donor.get('hillId'),
                    'zoneId': donor.get('zoneId'),
                    'total_gamma': donor.get('total_gamma'),
                    'y': donor.get('feature')['attributes'].y,
                    'x': donor.get('feature')['attributes'].x,
                    'z': donor.get('feature')['attributes'].z,
                    'gamma': donor.get('gamma')
                }  
            };
            allUpdates.push(donorUpdates);
            for(var index = 0; index < pc.length; index++) {
                allUpdates.push(pc[index]);
            }

            $.ajax({
                url: restServer + "/flowtable/save?updates="+JSON.stringify(allUpdates),
                type: "POST",
                success: function(msg) {
                    console.log("committed changes to flow table");
                    if(msg) {
                        // Return message contains file location of updated flowtable 
                        console.log("new flow table is: "+msg['flowtable']);
                    } 

                    // Reset map to prompt user to select another patch for editing
                    receivers.removeAllFeatures();
                    patchCollection.reset([]);
                    originalPatchCollection.reset([]);
                    $("#flow-table-header").html("You need to select a patch");
                    $("#flow-table-entry").hide();
                },

                error: function(msg) {
                    console.log("failed to commit changes");
                }

            });
            
        });
        this.ui.revert.click(function() {
            if(originalPatchCollection.size() > 0) {
                console.log("revert flow table changes");
                receivers.removeAllFeatures();
                patchCollection.reset([]);

                // Restore original model
                originalPatchCollection.each(function(model) {
                    var originalModel = model.clone();
                    originalModel.set('feature', model.get('feature').clone());
                    patchCollection.add(originalModel);
                });

                receivers.addFeatures(donorPatch);
            } 
        });

        this.ui.addReceiver.click(function() {
            console.log("add receiver");
            getPatchControl.activate();
            getFlowTableControl.deactivate();
            //drawfeature.activate();
            console.log('add patch');
            $("#help").html("Click on the map and the patch you click on will be added to the set of receivers for this entry on the right.");
        });
    }
});