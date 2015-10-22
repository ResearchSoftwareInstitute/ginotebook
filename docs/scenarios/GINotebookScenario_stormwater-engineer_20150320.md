# GI Designer User Scenario: Stormwater Engineer

## Introduction
Goal: Use GI Designer to design green infrastructure stormwater
management practices in a watershed, and to test the performance of
these practices using ecohydrologic, cost, and co-benefit models.

Author: Brian Miles

## User
Sam Stormwater Engineer


## Scenario

### Watershed selection 
Sam Stormwater Engineer (Sam; the user) wishes to use the *GI
Designer* to design green infrastructure stormwater management
practices (GI) in a watershed, and to test the performance of these
practices using ecohydrologic, cost, and co-benefit models (models).

Sam starts by loading the *GI Designer* website.  After logging in
(which may including signing up for an account), Sam is presented with
the *Region chooser*, which shows, using list and map view interfaces,
the set of regions for which watershed models are available.  Upon
choosing a region, the *Region viewer* for the chosen region is
loaded.  The *Region view*, which is essentially a web-based GIS
interface, allows Sam to overlay GIS layers available for the
particular region.  These layers (e.g. soils, elevation, environmental
hazard vulnerability), can be used to decide watersheds to prioritize
for GI implementation.  The *Region viewer* also allows Sam to load
custom GIS datasets, either by uploading vector or raster data, or by
associating a WMS, WCS, or WFS web service URL.

In addition to allowing the visualization of GIS data, the *Region
Viewer* also contains the *Watershed chooser*, which displays, using
list and map view interfaces, the watersheds for which *GI evaluator*
models are available.  For each watershed, the *Watershed chooser*
allows Sam to view information about each watershed (e.g. name,
description, watershed area, types of GI available to place in this
watershed, etc. metadata).  The list of available watersheds in the
*Watershed chooser* is determined by the watershed models that have
been added to the *GI Notebook* by the system administrators (a future
release could allow users to create new watershed models).

When Sam selects particular watershed, Sam is redirected to the *GI
designer* interface [TODO: Add figure], which loads the *Bird view
editor* for the watershed.  The *Bird view editor* is a web-based GIS
that loads the geospatial data for the selected watershed zoomed to
the maximum extent of the watershed. The base layer of the map is
OpenStreetMap data, with the following GIS layers overlaid: watershed
boundary (drawn as a polygon with no fill); and the landcover data as
defined in the ecohydrology model (drawn with transparency so that the
underlying imagery is present).  Optionally, the user can change the
base layer to one of the following: elevation contours; flow
accumulation map; flow direction; soils; baseline modeling results.

The *Bird view editor*, and by extension *GI designer*, allows Sam to
create new *GI scenarios*, which represents the implementation of one
or more *GI instances* in a watershed; *GI scenarios* are identified
by a unique name chosen by Sam.  The user can choose to edit *GI
scenarios* that have not yet been run in the *GI evaluator*, or to
create new *GI scenarios* based on previously run scenarios.  *GI
scenarios* can also be deleted (which will result in all results
associated with the instance being deleted.

The location of previously placed GI (for existing edit sessions) or
newly placed GI will be indicated on the plan-view map using the
polygons that define the GI area; these polygons will be filled with
the 2D overhead view icons associated with each green infrastructure
type.

![Bird's-eye view editor](images/GIEditor_v3.png)
Figure 1. Bird's-eye view editor. [OBSOLETE]

### Placing green infrastructure in Bird view editor
Within the *Bird view editor* (Figure 1) Sam can use "slippy map"
controls (i.e. panning and zooming) to navigate to the sub region of
the watershed in which Sam would like to place green infrastructure
storm water management practices.  Once the user finds the sub region
they would like to work in, they can place green infrastructure (GI)
elements in the watershed as follows:

1. Tap or click on the *Add new infrastructure* button;

2. Choose the desired GI type from the menu that appears, and then
click on the *Place green infrastructure* button;

3. Draw a polygon describing where the GI will be placed (each GI edit
will be associated with a single polygon);

Once the polygon for the new GI instance has been completed, it will
automatically be saved to the *GI scenario*, and the instance will
appear in the list of *GI edits*; when an element of this list is
selected, the GI polygon associated with the edit will be highlighted
on the GIS map.  If the polygon does not entirely lie within the
current viewport, the GI editor will gracefully pan to ensure that the
entire polygon is in view (plus a small area just beyond the polygon
so that it is clear to the user that the entire polygon is in view).

The *GI edits* listing will also allow the user to select one or more
GI edits, which will highlight them on the map (with necessary
panning, as above, and zooming to ensure all edits are visible in the
viewport).  Once selected, the user can delete the edits by tapping or
clicking on the *Delete GI* button in the *GI edits* listing.

### Viewing green infrastructure in street view 

![street view editor](images/street_view_editor.jpg)
Figure 2. street view editor. [OBSOLETE]

For each GI instance created in the *Bird view editor*, Sam will have
the option to view the GI from the *Street viewer*.  The *Street
viewer* uses Google Street View data to provide a 3D simulation of how
the GI will look in the context of a neighborhood streetscape.  To
enter the *Street viewer* Sam can click on the *Street view* button
that is enabled when a single GI instance is selected in the *GI
edits* list.

When the *Street viewer* loads, the default view will be centered on
the GI instance that was selected in the *GI edits* list.  However,
Sam will be able to change the view angle (in X and Y directions), as
well as to move the position of the street view camera along the
street using controls familiar to Google Street View.

When in *Street viewer*, a small map will appear in the lower left
corner of the screen showing an overhead view of the region of the
watershed the user is in, indicated the GI instance that was selected
when *Street viewer* was selected*.  There will also be a *Return to
Bird view* button under this map that will allow Sam to return to the
*Bird view editor*, with the viewport centered over the previously
selected GI instance.

### Creating a green infrastructure performance report
TBD
