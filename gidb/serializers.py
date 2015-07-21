from rest_framework import serializers

from .models import Watershed
from .models import GIInstance
from .models import HumanPrefImage
from .models import GIVegGrowthState
from .models import TemplatesForEcoClimate
from .models import GITemplate
from .models import GIElement
from .models import RHESSysStratumType
from .models import RHESSSysSoilType
from .models import Representation2D
from .models import Representation3D


class WatershedSerializer(serializers.ModelSerializer):

    class Meta:
        model = Watershed
        fields = ('id', 'name', 'model_url', 'template_menu')

class GIInstanceSerializer(serializers.ModelSerializer):

    class Meta:
        model = GIInstance
        fields = ('id', 'watershed', 'template', 'placement_poly')

class HumanPrefImageSerializer(serializers.ModelSerializer):

    class Meta:
        model = HumanPrefImage
        fields = ('id', 'name', 'gi_instance', 'pref_image')

class GIVegGrowthStateSerializer(serializers.ModelSerializer):

    class Meta:
        model = GIVegGrowthState
        fields = ('id', 'gi_instance', 'gi_element', 'leaf_area_index', 'stem_density', 'height')

class TemplatesForEcoClimateSerializer(serializers.ModelSerializer):

    class Meta:
        model = TemplatesForEcoClimate
        fields = ('id', 'name', 'templates')

class GITemplateSerializer(serializers.ModelSerializer):

    class Meta:
        model = GITemplate
        fields = ('id', 'name', 'model_3d', 'model_planview', 'gi_elements')

class GIElementSerializer(serializers.ModelSerializer):

    class Meta:
        model = GIElement
        fields = ('id', 'name', 'model_3d', 'model_planview', 'stratum_type', 'soil_type')

class RHESSysStratumTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = RHESSysStratumType
        fields = ('id', 'name', 'rhessys_default_id')

class RHESSysSoilTypeSerializer(serializers.ModelSerializer):

    class Meta:
        model = RHESSSysSoilType
        fields = ('id', 'name', 'rhessys_default_id')

class Representation2DSerializer(serializers.ModelSerializer):

    class Meta:
        model = Representation2D
        fields = ('id', 'rep_file', 'rep_thumbnail')

class Representation3DSerializer(serializers.ModelSerializer):

    class Meta:
        model = Representation3D
        fields = ('id', 'rep_file', 'rep_thumbnail')
