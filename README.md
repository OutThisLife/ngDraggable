ngDraggable
===========

Drag an element without jQuery UI. This does NOT have droppable support (yet), and is a simple directive for easily moving an element around in the browser.

# Usage
```html
<div ng-draggable>
 Drag Me!
</div>
```

With a handler:

```html
<div ng-draggable handle="#handle">
    I'm not the handle.
    <span id="#handle">But I am</span>
</div>
```
