from django.contrib.gis.db import models


class Region(models.Model):
    name = models.CharField(max_length=64)
    # TODO add representation of associated GIS datasets


class Watershed(models.Model):
    name = models.CharField(max_length=64)
    region = models.ForeignKey('Region', related_name='watersheds')
    model_url = models.URLField(max_length=1024)
    template_menu = models.ForeignKey('TemplatesForEcoClimate')
    boundary = models.ForeignKey('WatershedBoundary', blank=True, null=True) # TODO: Make required

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Watershed'


class WatershedBoundary(models.Model):
    name = models.CharField(max_length=64)
    boundary = models.PolygonField()

    def __unicode__(self):  # __str__ on Python 3
        return self.name


class GIScenario(models.Model):
    name = models.CharField(max_length=64)
    watershed = models.ForeignKey('Watershed')

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Scenario'


class GIInstance(models.Model):
    scenario = models.ForeignKey('GIScenario', related_name='giinstances')
    watershed = models.ForeignKey('Watershed')
    template = models.ForeignKey('GITemplate')
    placement_poly = models.PolygonField()

    def __unicode__(self):  # __str__ on Python 3
        return "{template} at {centroid}".format(template=self.template.name,
                                                 centroid=str(self.placement_poly.centroid))

    class Meta:
        verbose_name = 'Green infrastructure instance'


class GIRoutes(models.Model):
    instance = models.ForeignKey('GIInstance', related_name='routes')
    from_patch = models.ManyToManyField('GIRoutingVertexFromPatch', related_name='route_list')
    to_gi = models.ManyToManyField('GIRoutingVertexToGIInstance', related_name='route_list')
    to_patch = models.ManyToManyField('GIRoutingVertexToPatch', related_name='route_list')

    def __unicode__(self):  # __str__ on Python 3
        return "Routes for GI {instance}".format(instance=self.instance)

    class Meta:
        verbose_name = 'Green infrastructure route'


class GIRoutingVertex(models.Model):
    flow_proportion = models.DecimalField(max_digits=2, decimal_places=2)

    class Meta:
        abstract = True


class GIRoutingVertexToGIInstance(GIRoutingVertex):
    """
    Describes a connection between two GIInstances
    """
    to_instance = models.ForeignKey('GIInstance', related_name='receives_from_gi')

    def __unicode__(self):  # __str__ on Python 3
        return "From GI instance {from_instance} to GI instance {to_instance}" \
               " with proportion {prop}".format(from_instance=str(self.route_list.first().instance),
                                                to_instance=str(self.to_instance),
                                                prop=str(self.flow_proportion))

    class Meta:
        verbose_name = 'Green infrastructure to green infrastructure connection'


class GIRoutingVertexFromPatch(GIRoutingVertex):
    """
    Describes a connection from a patch to a GIInstance
    """
    from_patch = models.CharField(max_length=32)

    def __unicode__(self):  # __str__ on Python 3
        return "From patch {from_patch} to GI instance {to_instance}" \
               " with proportion {prop}".format(from_patch=str(self.from_patch),
                                                to_instance=str(self.route_list.first().instance),
                                                prop=str(self.flow_proportion))

    class Meta:
        verbose_name = 'Patch to green infrastructure connection'


class GIRoutingVertexToPatch(GIRoutingVertex):
    """
    Describes a connection from a GIInstance to a patch
    """
    to_patch = models.CharField(max_length=32)

    def __unicode__(self):  # __str__ on Python 3
        return "From GI instance {from_instance} to patch {to_patch}" \
               " with proportion {prop}".format(from_instance=str(self.route_list.first().instance),
                                                to_patch=str(self.to_patch),
                                                prop=str(self.flow_proportion))

    class Meta:
        verbose_name = 'Green infrastructure to patch connection'


class HumanPrefImage(models.Model):
    name = models.CharField(max_length=64)
    gi_instance = models.ForeignKey('GIInstance')
    pref_image = models.FileField()

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Human preference image'


class GIVegGrowthState(models.Model):
    gi_instance = models.ForeignKey('GIInstance')
    gi_element = models.ForeignKey('GIElement')
    leaf_area_index = models.FloatField(blank=True, null=True) # Units: sq-meters/sq-meters
    stem_density = models.FloatField(blank=True, null=True) # Units: grams carbon/sq-meter
    height = models.FloatField(blank=True, null=True) # Units: meters

    def __unicode__(self):  # __str__ on Python 3
        return "Growth state for {instance}".format(str(self.gi_instance))

    class Meta:
        verbose_name = 'Green infrastructure growth state'


class TemplatesForEcoClimate(models.Model):
    name = models.CharField(max_length=64, unique=True)
    templates = models.ManyToManyField('GITemplate')

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Eco-climate GI template'


class GITemplate(models.Model):
    name = models.CharField(max_length=64, unique=True)
    model_3d = models.ForeignKey('Representation3D')
    model_planview = models.ForeignKey('Representation2D')
    gi_elements = models.ManyToManyField('GIElement')

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Green infrastructure template'


class GIElement(models.Model):
    name = models.CharField(max_length=64, blank=False)
    model_3d = models.ForeignKey('Representation3D', blank=True, null=True)
    model_planview = models.ForeignKey('Representation2D', blank=True, null=True)
    stratum_type = models.ForeignKey('RHESSysStratumType', blank=True, null=True)
    soil_type = models.ForeignKey('RHESSysSoilType', blank=True, null=True)
    major_axis = models.FloatField(blank=True, null=True)
    minor_axis = models.FloatField(blank=True, null=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Green infrastructure element'


class RHESSysStratumType(models.Model):
    name = models.CharField(max_length=64, unique=True)
    rhessys_default_id = models.CharField(max_length=8, unique=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'RHESSys stratum type'


class RHESSysSoilType(models.Model):
    name = models.CharField(max_length=64, unique=True)
    rhessys_default_id = models.CharField(max_length=8, unique=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'RHESSys soil type'


class Representation2D(models.Model):
    name = models.CharField(max_length=64, unique=True)
    rep_file = models.FileField()
    rep_thumbnail = models.FileField(blank=True, null=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name ='2D visual representation'


class Representation3D(models.Model):
    name = models.CharField(max_length=64, unique=True)
    rep_file = models.FileField()
    rep_thumbnail = models.FileField()

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name ='3D visual representation'

