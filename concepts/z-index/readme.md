# Understanding the `z-index` Property

For a positioned box (one with any position other than `static`), the `z-index` property specifies:

1. The stack level of the box in the current stacking context.
2. Whether the box establishes a local stacking context.

The `z-index` property can be specified as either the keyword `auto` or an `<integer>`.

### `auto`
- The box does not establish a new local stacking context.
- The stack level of the generated box in the current stacking context is `0`.

### `<integer>`
- This `<integer>` is the stack level of the generated box in the current stacking context.
- The box also establishes a local stacking context, meaning the `z-index` values of its descendants are not compared to the `z-index` values of elements outside this element.

### Default Stacking Order

- Without any `z-index` value, elements stack in the order they appear in the DOM (elements lowest in the DOM at the same hierarchy level appear on top). So, `.grey` shows on top of `.pink` even if we remove the `z-index` property from both `.grey` and `.pink`.
- Elements with non-static positioning will always appear on top of elements with default static positioning. So, `.grey` and `.pink` are showing on top of `.yellow`.

### Nesting and Stacking

- If element B sits on top of element A, a child element of element A can never be higher than element B.
- If `.pink` and `.grey` both have the same `z-index` (or even if `.grey` has a greater `z-index`), and `.grey` is showing on top, `.lightblue` (child of `.pink`) cannot show on top of `.grey` even if its `z-index` is 10000.
- However, if we comment out the `z-index` of both `.grey` and `.pink` (defaults to `auto`), then no local stacking context is created for `.pink` and `.grey`. This is why `.lightblue` is on top of `.grey` and `.grey` is on top of `.pink`.

# How Stacking Contexts are Created

A new stacking context is automatically created when an element meets certain criteria, such as:

- The root element of the document (`<html>`).
- An element with a `z-index` value other than `auto` and with a `position` value of `relative`, `absolute`, or `fixed`.
- An element with `opacity` less than 1.
- An element with `transform`, `scale`, `rotate`, `translate`, `filter`, or `perspective` properties.
- An element with `will-change: transform` or `will-change: opacity`.
- An element with an `isolation` value of `isolate`.
- An element that is a child of a flex container, with a `z-index` value other than `auto`.
- An element that is a child of a grid container, with a `z-index` value other than `auto`.

## Effects of Stacking Context

- Elements within the same stacking context stack according to their `z-index` values.
- Elements in different stacking contexts don’t directly affect each other’s stacking order.
- A stacking context isolates its children from the stacking order of elements outside of it.