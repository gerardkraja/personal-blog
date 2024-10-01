#!/bin/bash

# Run Hugo and Tailwind concurrently
npx tailwindcss -i assets/css/input.css -o ../../assets/css/output.css --watch &
hugo server -s ../../ --bind=0.0.0.0 --cleanDestinationDir --disableFastRender --gc --minify --noHTTPCache --buildDrafts &

# Wait for both background processes to finish
wait
