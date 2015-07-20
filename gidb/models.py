from django.contrib.gis.db import models

class Watershed(models.Model):
    name = models.CharField(max_length=64)
    model_url = models.URLField(max_length=512)
    template_menu = models.ForeignKey('TemplatesForEcoClimate')

class GIInstance(models.Model):
    watershed = models.ForeignKey('Watershed')
    template = models.ForeignKey('GITemplate')
    placement_poly = models.PolygonField()

class HumanPrefImage(models.Model):
    gi_instance = models.ForeignKey('GIInstance')
    pref_image = models.FileField()

class GIVegGrowthState(models.Model):
    gi_instance = models.ForeignKey('GIInstance')
    gi_element = models.ForeignKey('GIElement')
    leaf_area_index = models.FloatField(blank=True, null=True) # Units: sq-meters/sq-meters
    stem_density = models.FloatField(blank=True, null=True) # Units: grams carbon/sq-meter
    height = models.FloatField(blank=True, null=True) # Units: meters

class TemplatesForEcoClimate(models.Model):
    name = models.CharField(max_length=64, unique=True)
    templates = models.ManyToManyField('GITemplate')

class GITemplate(models.Model):
    name = models.CharField(max_length=64, unique=True)
    model_3d = models.ForeignKey('Representation3D')
    model_planview = models.ForeignKey('Representation2D')
    gi_elements = models.ManyToManyField('GIElement')

class GIElement(models.Model):
    name = models.CharField(max_length=64, blank=False)
    model_3d = models.ForeignKey('Representation3D', blank=False, null=True)
    model_planview = models.ForeignKey('Representation2D', blank=False, null=True)
    stratum_type = models.ForeignKey('RHESSysStratumType', blank=False, null=True)
    soil_type = models.ForeignKey('RHESSSysSoilType', blank=False, null=True)

class RHESSysStratumType(models.Model):
    name = models.CharField(max_length=128, unique=True)
    rhessys_default_id = models.IntegerField(unique=True)

class RHESSSysSoilType(models.Model):
    name = models.CharField(max_length=128, unique=True)
    rhessys_default_id = models.IntegerField(unique=True)

class Representation(models.Model):
    rep_file = models.FileField()
    rep_thumbnail = models.FileField()

class Representation2D(Representation):
    pass

class Representation3D(Representation):
    pass

