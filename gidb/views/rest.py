from rest_framework import authentication, permissions, viewsets

from rest_framework_gis.filters import DistanceToPointFilter

from ..models import *
from ..serializers import *


class DefaultsMixin(object):
    """ Default settings for rest_framework views
    """

    authentication_classes = (
        authentication.BasicAuthentication,
        authentication.SessionAuthentication,
        authentication.TokenAuthentication
    )
    permission_classes = (
        permissions.IsAuthenticated,
    )
    paginate_by = 25
    paginate_by_param = 'page_size'
    max_paginate_by = 1000


class RegionViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Region CRUD operations
    """

    queryset = Region.objects.all()
    serializer_class = RegionSerializer


class WatershedViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Watershed CRUD operations
    """

    queryset = Watershed.objects.all()
    serializer_class = WatershedSerializer


class WatershedBoundaryViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Watershed Boundary CRUD operations
    """

    queryset = WatershedBoundary.objects.all()
    serializer_class = WatershedBoundarySerializer


class GIScenarioViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIScenario CRUD operations
    """

    queryset = GIScenario.objects.all()
    serializer_class = GIScenarioSerializer


class GIInstanceViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIInstance CRUD operations
    """

    queryset = GIInstance.objects.all()
    serializer_class = GIInstanceSerializer
    distance_filter_field = 'placement_poly'
    filter_backends = (DistanceToPointFilter,)
    distance_filter_convert_meters = True


class HumanPrefImageViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for HumanPrefImage CRUD operations
    """

    queryset = HumanPrefImage.objects.all()
    serializer_class = HumanPrefImageSerializer


class GIVegGrowthStateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIVegGrowthState CRUD operations
    """

    queryset = GIVegGrowthState.objects.all()
    serializer_class = GIVegGrowthStateSerializer


class TemplatesForEcoClimateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for TemplatesForEcoClimate CRUD operations
    """

    queryset = TemplatesForEcoClimate.objects.all()
    serializer_class = TemplatesForEcoClimateSerializer


class GITemplateViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GITemplate CRUD operations
    """

    queryset = GITemplate.objects.all()
    serializer_class = GITemplateSerializer


class GIElementViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIElement CRUD operations
    """

    queryset = GIElement.objects.all()
    serializer_class = GIElementSerializer


class RHESSysStratumTypeViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for RHESSysStratumType CRUD operations
    """

    queryset = RHESSysStratumType.objects.all()
    serializer_class = RHESSysStratumTypeSerializer


class RHESSysSoilTypeViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for RHESSysSoilType CRUD operations
    """

    queryset = RHESSysSoilType.objects.all()
    serializer_class = RHESSysSoilTypeSerializer


class Representation2DViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Representation2D CRUD operations
    """

    queryset = Representation2D.objects.all()
    serializer_class = Representation2DSerializer


class Representation3DViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for Representation3D CRUD operations
    """

    queryset = Representation3D.objects.all()
    serializer_class = Representation3DSerializer


class GIRoutesViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIRoutes CRUD operations
    """

    queryset = GIRoutes.objects.all()
    serializer_class = GIRoutesSerializer


class GIRoutingVertexToGIInstanceViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIRoutingVertexToGIInstance CRUD operations
    """

    queryset = GIRoutingVertexToGIInstance.objects.all()
    serializer_class = GIRoutingVertexToGIInstanceSerializer


class GIRoutingVertexFromPatchViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIRoutingVertexFromPatch CRUD operations
    """

    queryset = GIRoutingVertexFromPatch.objects.all()
    serializer_class = GIRoutingVertexFromPatchSerializer


class GIRoutingVertexToPatchViewSet(DefaultsMixin, viewsets.ModelViewSet):
    """ API endpoint for GIRoutingVertexToPatch CRUD operations
    """

    queryset = GIRoutingVertexToPatch.objects.all()
    serializer_class = GIRoutingVertexToPatchSerializer
