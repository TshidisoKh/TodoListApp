#!/usr/bin/env bash
# Define output file. Change "$PROJECT_DIR/Tests" to your test's root source folder, if it's not the default name.
OUTPUT_FILE="$PROJECT_DIR/TodoListAppTests/GenerateCuckooMocks.swift"
echo "Generated Mocks File = $OUTPUT_FILE"

# Define input directory. Change "$PROJECT_DIR" to your project's root source folder, if it's not the default name.
INPUT_DIR="$PROJECT_DIR"
echo "Mocks Input Directory = $INPUT_DIR"

# Generate mock files, include as many input files as you'd like to create mocks for.
# Please add "$INPUT_DIR/$(find . -name SWIFTFILENAME.swift) below to be mocked out
${PODS_ROOT}/Cuckoo/run generate --testable "TodoListApp" \
--output "${OUTPUT_FILE}" \
 "$INPUT_DIR/$(find . -name DemoRepository.swift)"\
 "$INPUT_DIR/$(find . -name TodoListCache.swift)"\
 "$INPUT_DIR/$(find . -name TodoListRepository.swift)"\
 "$INPUT_DIR/$(find . -name WeatherService.swift)"\
 "$INPUT_DIR/$(find . -name WeatherRepository.swift)"\
 "$INPUT_DIR/$(find . -name StocksService.swift)"\
 "$INPUT_DIR/$(find . -name StocksRepository.swift)"

echo "End GenerateWealthFeaturesCuckooMocks.sh"
