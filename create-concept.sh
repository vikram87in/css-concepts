#!/bin/bash

# CSS Concepts Project - New Concept Creator
# Usage: ./create-concept.sh "concept-name" "Display Name"

if [ $# -eq 0 ]; then
    echo "Usage: ./create-concept.sh <concept-name> [Display Name]"
    echo "Example: ./create-concept.sh flexbox 'CSS Flexbox'"
    exit 1
fi

CONCEPT_NAME=$1
DISPLAY_NAME=${2:-$1}
CONCEPT_DIR="concepts/$CONCEPT_NAME"

# Create concept directory
mkdir -p "$CONCEPT_DIR"

# Copy template files
cp template.html "$CONCEPT_DIR/index.html"
cp styles.css "$CONCEPT_DIR/styles.css"

# Replace placeholders in HTML
sed -i.bak "s/\[CONCEPT_NAME\]/$DISPLAY_NAME/g" "$CONCEPT_DIR/index.html"
rm "$CONCEPT_DIR/index.html.bak"

# Replace placeholders in CSS
sed -i.bak "s/\[CONCEPT_NAME\]/$DISPLAY_NAME/g" "$CONCEPT_DIR/styles.css"
rm "$CONCEPT_DIR/styles.css.bak"

echo "✅ Created new concept: $CONCEPT_NAME"
echo "📁 Location: $CONCEPT_DIR"
echo "🔗 Access at: concepts/$CONCEPT_NAME/index.html"
echo ""
echo "📝 Next steps:"
echo "1. Edit $CONCEPT_DIR/index.html and $CONCEPT_DIR/styles.css to practice and learn new concepts"
echo ""
echo "Happy coding! 🎨"
