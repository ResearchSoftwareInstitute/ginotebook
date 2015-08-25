var Patch = Backbone.Model.extend({
    defaults : {
    	patchId: 0, 
    	zoneId: 0, 
    	hillId: 0, 
    	gamma:0, 
    	total_gamma: 0
    },

    validate : function(attrs, options) {
    	console.log("validate"); 
    }
});
