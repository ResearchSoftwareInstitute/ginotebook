from django.contrib import admin

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
admin.site.register(GIInstance)
admin.site.register(HumanPrefImage)
admin.site.register(GIVegGrowthState)
admin.site.register(TemplatesForEcoClimate)
admin.site.register(GITemplate)
admin.site.register(GIElement)
admin.site.register(RHESSysStratumType)
admin.site.register(RHESSysSoilType)
admin.site.register(Representation2D)
admin.site.register(Representation3D)

