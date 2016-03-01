from django.contrib.gis import admin

from .models import *


admin.site.register(Region, admin.OSMGeoAdmin)
admin.site.register(Watershed)
admin.site.register(WatershedBoundary)
admin.site.register(GIScenario)
admin.site.register(GIInstance, admin.OSMGeoAdmin)
admin.site.register(GIRoute)
admin.site.register(GIRoutingVertexToGIInstance)
admin.site.register(GIRoutingVertexFromPatch)
admin.site.register(GIRoutingVertexToPatch)
admin.site.register(HumanPrefImage)
admin.site.register(GIVegGrowthState)
admin.site.register(TemplatesForEcoClimate)
admin.site.register(GITemplate)
admin.site.register(GIElement)
admin.site.register(GIType)


class RHESSysStratumTypeAdmin(admin.ModelAdmin):
    list_display = ('name', 'rhessys_default_id')
    ordering = ('rhessys_default_id',)
admin.site.register(RHESSysStratumType, RHESSysStratumTypeAdmin)


class RHESSysSoilTypeAdmin(admin.ModelAdmin):
    list_display = ('name', 'rhessys_default_id')
    ordering = ('rhessys_default_id',)
admin.site.register(RHESSysSoilType, RHESSysSoilTypeAdmin)


class Representation2DAdmin(admin.ModelAdmin):
    list_display = ('name', 'rep_file')
    ordering = list_display
admin.site.register(Representation2D, Representation2DAdmin)


class Representation3DAdmin(admin.ModelAdmin):
    list_display = ('name', 'rep_thumbnail')
    ordering = list_display
admin.site.register(Representation3D, Representation3DAdmin)
