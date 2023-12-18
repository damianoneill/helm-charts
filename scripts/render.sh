#!/bin/bash

# Directory where your Helm charts are located
charts_directory="charts"

# Directory to store the rendered template files
output_directory="rendered_templates"

# Create the output directory if it doesn't exist
mkdir -p "$output_directory"

# Loop through each Helm chart in the charts directory
for chart in "$charts_directory"/*; do
    # Check if the item is a directory
    if [ -d "$chart" ]; then
        chart_name=$(basename "$chart")

        # Run `helm dependency build` to fetch chart dependencies
        helm dependency build "$chart"

        # Render the Helm template and save the output to a file
        helm template "$chart" > "$output_directory/$chart_name.yaml"

        echo "Rendered $chart_name"
    fi
done

echo "Rendering completed."
