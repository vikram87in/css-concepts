Clearing float means that the container should increase its height to accommodate the floated elements inside it. Remember, if all the elements in a container are floated, by default its height would collapse. If we want the height to not collapse and the container to wrap the floated elements, we need to clear floats.

Several ways:

1) Add an element like `<br>` with style `clear: both`: Not a good approach as it requires us to add an extra element in the DOM.

2) With the help of a pseudo-element: This approach is also old and should be used if we need to support old browsers. The `display: table` property is used in the clearfix approach to create a new block formatting context, which helps in clearing floats. Using `display: block` would not have the same effect because it does not create a new block formatting context in the same way. The `display: table` property ensures that the pseudo-element expands to contain the floated elements, effectively clearing the float.

    ```css
    .container::after {
      content: "";
      display: table;
      clear: both;
    }
    ```

3) Use `overflow: auto`: This creates a new block formatting context. Actually, specifying a value other than `visible` (the default) or `clip` for the overflow property creates a new block formatting context.

    ```css
    .container {
      overflow: auto;
    }
    ```

4) `display: flow-root`: A more modern approach. It is just like `display: block` but also establishes a new block formatting context.

    ```css
    .container {
      display: flow-root;
    }
    ```


# How Block Formatting Contexts are Created

A Block Formatting Context (BFC) is created when one of the following properties is applied to an element:

- `float` set to anything other than `none`.
- `overflow` set to anything other than `visible`.
- `display` set to `inline-block`, `table-cell`, `table-caption`, `flex`, or `grid`.
- `position` set to `absolute` or `fixed`.

## Effects of Block Formatting Context

- Elements inside a BFC don’t overlap with floats outside the BFC.
- BFCs contain floats and prevent margin collapsing with other BFCs.
- BFC ensures that the parent element containing floats will properly wrap around them.
