## Understanding Margin Collapsing

### Margin Collapsing in Nested Elements

Inside the `.parent` div, all the nested div elements share the top margin with the `h1` element. As a result, they all have a margin-top of 20px. Their individual margin of 5px is collapsed with the margin of the `h1` element.

To prevent this margin collapsing and ensure only the `h1` element has a top margin of 20px, you can:
- Use `display: flow-root` for the `.parent` (or `.inner`) div to create a Block Formatting Context (BFC).
- Add a border, padding, or some content between the div elements and the `h1` element.

### Margin Collapsing Between Adjacent Elements

The `.last` div is vertically adjacent to the `.parent` div. Therefore, their margins collapse to 40px, which is the maximum of the two margins (40px and 30px).

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
