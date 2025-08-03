# CSS Practice Project

This project is designed to help you learn CSS by practicing different concepts. Each concept has its own HTML file and corresponding CSS file located in the `concept` folder.

## Folder Structure

Here is the current folder structure of the project:

```
- root
  - template.html
  - template.css
  - concept
    - concept-name
      - index.html
    - ...
  - assets
    - images
      - ...
```

- The `template.html` and `styles.css` files in the root directory can be used as a starting point for creating new HTML and CSS files.

### 🚀 Quick Start - Creating New Concepts

Use the automation script to quickly create new concept folders with all necessary files:

```bash
./create-concept.sh <concept-name> "Display Name"
```

**Example:**
```bash
./create-concept.sh flexbox "CSS Flexbox Layout"
```

This command will:
- ✅ Create a new folder: `concepts/flexbox/`
- ✅ Generate `index.html` with proper template structure
- ✅ Generate `styles.css` with concept-specific styling
- ✅ Replace placeholders with your concept name

- The `concept` folder contains subfolders for each concept you will be learning. Inside each concept folder, you will find an `index.html` file where you can practice and experiment with the specific concept.
- The `assets` folder is used to store any additional assets, such as images, that you may need for your project.

## Opening the Page

Simply open the `index.html` file with the Five Server to view the page in your browser. Once Five Server is active, we can just click on the html file in the Explorer tab to open/view it in the browser.
