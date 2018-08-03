Many adservers (SSPs) use macros to pass information to adverts. For example, DoubleClick for Publishers (DfP) requires macros for the advert to know such basics as what site it is on, and the height and width of the space.

Here is an example of our adunit tag with DfP macros:

```
<div class='goodloopad'></div>
<script src='//as.good-loop.com/unit.js?site=%%SITE%%&gl_url=%%PATTERN:url%%&width=%%WIDTH%%&height=%%HEIGHT%%&adunit=%%ADUNIT%%&cb=%%CACHEBUSTER%%&click_url=%%CLICK_URL_ESC%%'></script>
```

Below is a list of macros from DoubleClick for Publishers which we support. The more context information you can pass to the adunit, the better.

### Core Macros

| Good-Loop parameter | DfP Macro | Description |
| --- | --- | --- |
| site | %%SITE%% | The website |
| gl_url | %%PATTERN:url%% | The full url of the page |
| width | %%WIDTH%% | Width of the ad slot (in pixels) |
| height | %%HEIGHT | Height of the ad slot (in pixels) |
| adsize |   | width x height of the ad slot (in pixels) |
| adunit | %%ADUNIT%% | An identifier for the ad slot |
| cb | %%CACHEBUSTER%% | A random number to stop caching causing repreated ads |

### Advanced Macros

Event tracking macros may be needed when routing ads via a DSP or exchange.

For a specific Publisher event tracking can also be setup in the Good-Loop Portal, and this is the recommended
way to do it, as it is easier to manage.

| Good-Loop parameter | DfP Macro | Description |
| --- | --- | --- |
| click_url | %%CLICK_URL_ESC%% | A tracking url to record if a viewer clicks through to visit the advertiser. This is for the Publisher's stats. Good-Loop also provides other analytics tie-ins for advertisers to collect event based stats |
| minview_url |    | A tracking url to record when a viewer watches the minimum amount for the view to count (also known as a completed-video-view or completed-view elsewhere). |
| xbid |    | Auction ID or other reference for the specific impression |
| onEvent |    | A tracking url for all events. This can use our tracking macros. Remember to url-encode the url so it can be passed as a parameter. |

## Our Macros

You can provide the Good-Loop adunit with tracking urls (e.g. click_url for click counting).
These tracking urls can use our Tracking Macros to insert some information.

You can also use our macros in vast/vpaid urls.

Syntax note: We use the format \*term\*, as this does not cause issues with url encoding, nor does it conflict with DoubleClick's use of %%.

| Tracking Macro | Description | Example
| --- | --- | --- |
| \*event_type\* | The event type | `minview` or `click` |
| \*timestamp\* | The time (in epoch milliseconds) | `1527261777138` (which is 25th May 2018 if you're human) |
| \*bid\* | Our bid/impression ID, which can be used in audit trails |  |
| \*cachebuster\* | A random nonce, to avoid browser caching |  |
| \*publisher\* | The publisher ID - usually their website domain |  |

Here is an example of an adunit with external tracking:

<div class='goodloopad'></div>
<script src='//testas.good-loop.com/unit.js?onEvent=http%3A//myserver.com/click-counter%3Fevent%3D*event_type*'
></script>

## DfP References

See https://support.google.com/dfp_premium/answer/2376981?hl=en
https://support.google.com/adxbuyer/answer/3187721?hl=en