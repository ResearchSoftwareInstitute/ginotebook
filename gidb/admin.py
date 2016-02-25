from django.contrib.gis import admin

from .models import Region
from .models import Watershed
from .models import WatershedBoundary
from .models import GIScenario
from .models import GIInstance
from .models import GIRoute
from .models import GIRoutingVertexToGIInstance
from .models import GIRoutingVertexFromPatch
from .models import GIRoutingVertexToPatch
from .models import HumanPrefImage
from .models import GIVegGrowthState
from .models import TemplatesForEcoClimate
from .models import GITemplate
from .models import GIElement
from .models import RHESSysStratumType
from .models import RHESSysSoilType
from .models import Representation2D
from .models import Representation3D


admin.site.register(Region)
admin.site.register(Watershed)
admin.site.register(WatershedBoundary)
admin.site.register(GIScenario)
admin.site.register(GIInstance, admin.GeoModelAdmin)
admin.site.register(GIRoute)
admin.site.register(GIRoutingVertexToGIInstance)
admin.site.register(GIRoutingVertexFromPatch)
admin.site.register(GIRoutingVertexToPatch)
admin.site.register(HumanPrefImage)
admin.site.register(GIVegGrowthState)
admin.site.register(TemplatesForEcoClimate)
admin.site.register(GITemplate)
admin.site.register(GIElement)


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
