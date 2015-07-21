from django.contrib.gis.db import models

class Watershed(models.Model):
    name = models.CharField(max_length=64)
    model_url = models.URLField(max_length=512)
    template_menu = models.ForeignKey('TemplatesForEcoClimate')

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Watershed'

class GIInstance(models.Model):
    watershed = models.ForeignKey('Watershed')
    template = models.ForeignKey('GITemplate')
    placement_poly = models.PolygonField()

    def __unicode__(self):  # __str__ on Python 3
        return "{template} at {centroid}".format(template=self.template.name,
                                                 centroid=str(self.placement_poly.centroid))

    class Meta:
        verbose_name = 'Green infrastructure instance'

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
    model_3d = models.ForeignKey('Representation3D', blank=False, null=True)
    model_planview = models.ForeignKey('Representation2D', blank=False, null=True)
    stratum_type = models.ForeignKey('RHESSysStratumType', blank=False, null=True)
    soil_type = models.ForeignKey('RHESSysSoilType', blank=False, null=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'Green infrastructure element'

class RHESSysStratumType(models.Model):
    name = models.CharField(max_length=128, unique=True)
    rhessys_default_id = models.IntegerField(unique=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'RHESSys stratum type'

class RHESSysSoilType(models.Model):
    name = models.CharField(max_length=128, unique=True)
    rhessys_default_id = models.IntegerField(unique=True)

    def __unicode__(self):  # __str__ on Python 3
        return self.name

    class Meta:
        verbose_name = 'RHESSys soil type'

class Representation(models.Model):
    rep_file = models.FileField()
    rep_thumbnail = models.FileField()

class Representation2D(Representation):

    class Meta:
        verbose_name ='2D visual representation'

class Representation3D(Representation):

    class Meta:
        verbose_name ='3D visual representation'

