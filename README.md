# Saigon, considered

**Public website:** https://hairson912.github.io/saigon-considered-guide/

A free bilingual visitor guide for the Võ Thị Sáu area of Ho Chi Minh City. GitHub Pages publishes the files from the root of the main branch.

## Run locally

On Windows, double-click run-local.bat, leave its command window open, then visit http://localhost:8000. Or run python -m http.server 8000 in this folder and open that address. Do not open index.html through file://: OpenStreetMap’s standard tile service requires a web-page Referer, which local files cannot send, and returns 403.

## Publish updates

Edit index.html, app.js, or styles.css and commit to main. GitHub Pages redeploys automatically. No build step, API key, or paid hosting is needed.

## QR code

Create a QR code for https://hairson912.github.io/saigon-considered-guide/ and test it with a phone camera before printing.

## Map and visitor information

The interactive map uses Leaflet and the standard OpenStreetMap tile endpoint, with attribution displayed on the map. The directions button opens Google Maps; visitors can grant browser location access to use their coordinates as the route origin. The site does not store location.

Prices and schedules can change. See the official visitor pages for Independence Palace (https://dinhdoclap.gov.vn/en/contact/), Southern Women’s Museum (https://baotangphunu.com/), and War Remnants Museum (https://baotangchungtichchientranh.vn/vi/tham-quan). Other uncertain details are marked for confirmation. No popularity sort is included because there is no reliable comparable source.

Attraction images are hosted by Wikimedia Commons and tourism publishers. Check each image’s reuse terms before commercial use. OpenStreetMap map data attribution is visible on the map; see https://www.openstreetmap.org/copyright.
