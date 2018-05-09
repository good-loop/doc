# Canonical Terminology for Logging Good-Loop Events:

NB: the event names are designed to be good for grep

 -  `trk.pxl` | A user has visited a site on which the G-L pixel lives, and now the pixel allows G-L to track if that user interacts with the ad-unit, re-visits the site(s), and/or visits the Advertiser's click-through page.
 - `gl.request` | The adunit is requested by a call to unit.js. This can be confirmed against our nginx logs. Unlike other events, this event is recorded by the adserver backend calling lg.good-loop.com | 
 -  `gl.visible` | The adunit is viewable (it's on screen). | 
 - `gl.mouseover` | The user has paid attention to the unit (probably mouse-over on desktop is the only way we can capture this). This is not currently logged. | 
 - `gl.open` | The user has opened the lightbox. | 
 - `gl.pick` | A user has clicked on a charity, indicating that they wish to use the gained ad-revenue to contribute to the charity. | `gl.pick` | 
 - `gl.minview ` | A user has now watched the minimal amount of time required to contribute to a charity. |
 - `gl.donation` | A donation is made. |
 - `gl.close` | A user has closed the lightbox |
 - `gl.closeTab` | A user has closed the tab / navigated away from the standalone player | 
 - `gl.click` | A user has clicked on an href item somewhere in either the lightbox or on the adunit itself. |
 - `gl.elapse` | A running count of elapse video viewing time. |
 - `gl.viewtime` | The elapsed time that video playback of the ad has actually occurred | 
