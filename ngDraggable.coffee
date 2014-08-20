# Easily drag an element without jQuery UI
app.directive 'ngDraggable', ->
	restrict: 'A'
	scope: false
	link: (scope, el, attrs) ->
		$drag = if attrs.handle then angular.element(attrs.handle) else el

		el.css
			zIndex: 9999
			position: 'fixed'

		$drag.css cursor: 'move'

		h = el.outerHeight()
		w = el.outerWidth()

		$drag.on 'mousedown', (e) ->
			y = el.offset().top + h - e.screenY
			x = el.offset().left + w - e.screenX

			$drag.on 'mousemove', (e) ->
				el.css
					top: e.screenY + y - h
					left: e.screenX + x - w

				e.preventDefault()

		$drag.on 'mouseup mouseleave', -> $drag.off 'mousemove'