# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-01-10

### Added

- **Marker Visibility Controls** - New configuration options for controlling entity marker display
  - `hide_markers_for_polygons` - Hide markers for entities that have polygon boundaries (default: `true`)
  - `marker_polygon_threshold` - Size threshold in meters; polygons larger than this still show markers
  - `marker_min_zoom` / `marker_max_zoom` - Control marker visibility based on zoom level
- **Screen Reader Announcements** - Announces marker count changes for accessibility
- **Semantic Popup HTML** - Improved popup structure for screen readers with proper headings and landmarks
- **Unit Testing Framework** - Added Vitest with 73 comprehensive tests covering:
  - Configuration validation
  - Geometry utilities
  - Polygon detection
  - Extent caching
- **Performance Optimization** - Polygon extent calculations are now cached with hash-based invalidation

### Changed

- Improved geometry type detection for better Point vs Polygon handling
- Enhanced documentation with marker visibility configuration guide

### Fixed

- Point geometry now correctly renders as markers instead of bare GeoJSON points

## [1.0.0] - 2025-12-30

### Added

- Initial release
- Interactive Leaflet.js map for Home Assistant
- Polygon rendering for emergency incident boundaries
- Australian Warning System color scheme
- Entity tracking (person, device_tracker, geo_location)
- Zone display
- History trails
- Dark/light theme support
- Visual card editor
- WCAG 2.1 AA accessibility compliance
- Keyboard navigation
- Responsive design

[1.1.0]: https://github.com/troykelly/lovelace-abc-emergency-map/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/troykelly/lovelace-abc-emergency-map/releases/tag/v1.0.0
