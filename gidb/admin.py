from django.contrib.gis import admin

from .models import Watershed
from .models import GIInstance
from .models import HumanPrefImage
from .models import GIVegGrowthState
from .models import TemplatesForEcoClimate
from .models import GITemplate
from .models import GIElement
from .models import RHESSysStratumType
from .models import RHESSysSoilType
from .models import Representation2D
from .models import Representation3D


admin.site.register(Watershed)
admin.site.register(GIInstance, admin.GeoModelAdmin)
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
    list_display = ('name',)
    ordering = list_display
admin.site.register(Representation2D, Representation2DAdmin)

class Representation3DAdmin(admin.ModelAdmin):
    list_display = ('name',)
    ordering = list_display
admin.site.register(Representation3D, Representation3DAdmin)
