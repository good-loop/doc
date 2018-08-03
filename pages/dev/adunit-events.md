
# Advanced Developer Topic: AdUnit Events

Your website can hook into adunit events. The unit dispatches events which you can write a listener for. 
The events are from the adunit div, but they bubble up, so you can listen on a higher up element like body if you prefer (which may be easiest, as it takes a moment for the adunit div to be created).

"gl:minview" is the completed view we-all-get-paid event. So to listen and respond when a minview occurs, you could use:

	$('body').on('gl:minview', function(event) {/* your code */} )

	