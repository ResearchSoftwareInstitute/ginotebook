from django.contrib.gis.db import models

class Watershed(models.Model):
    name = models.CharField(max_length=64)
    model_url = models.URLField(max_length=1024)
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

