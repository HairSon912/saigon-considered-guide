# Saigon, considered

A lightweight bilingual tourist guide centred on Võ Thị Sáu, Xuân Hòa, Ho Chi Minh City. It uses Leaflet and OpenStreetMap, needs no API key, and has no login or build step. The initial dataset is in `app.js`; add a place by adding one object to `places` with its coordinates, English/Vietnamese copy, category, image, admission, hours, duration and visitor notes. Extend `categoryGroups`, `visitDays`, `fitNotes`, and `priceRank` for the new place.

## Run on your computer

Do not launch `index.html` by double-clicking it (`file://`) when using OpenStreetMap tiles. OSM's standard tile server requires a valid web-page `Referer`, which local files cannot send, and responds with 403. Instead, double-click `run-local.bat`, keep its console window open, and open `http://localhost:8000` in your browser. This also enables browser location on localhost.

Alternatively, start the local server from this folder:

```bash
cd outputs
python -m http.server 8000
```

Internet access is needed for map tiles, fonts, and photos. The layout includes responsive breakpoints in `styles.css` for mobile and desktop widths.

## Publish on Vercel

1. Put the `outputs` folder in a Git repository and push it to GitHub.
2. In Vercel, create a project from that repository and set the **Root Directory** to `outputs`.
3. Choose **Other** / static site if asked. Leave the build command blank and set the output directory to `.`. No environment variables are needed.
4. Deploy. Vercel provides a public HTTPS URL; open it on a phone and test map tiles and Google Maps directions.

You can use the same folder with Netlify Drop or another static host. Keep the site public if guests should not need accounts.

## QR code for guests

After publishing, copy the public HTTPS site URL and create a QR code that encodes that URL with any trusted QR generator. Test the code from a phone that is not signed into your hosting account. A QR code cannot be finalized until the public website URL exists.

## Map, directions and location

OpenStreetMap tiles use the standard `https://tile.openstreetmap.org/{z}/{x}/{y}.png` endpoint and attribution is included. A map-tile error message appears if the provider blocks tile requests. The directions button opens a Google Maps directions URL with the attraction coordinates. Without location permission, Google Maps can determine the starting point itself. If the guest chooses **My location** and allows browser location access, the site supplies those coordinates as the route origin. Geolocation normally requires HTTPS (or localhost during development). The site does not store the location.

## Content accuracy and images

Admission and hours can change. The palace's details use [official visitor information](https://dinhdoclap.gov.vn/en/contact/). The Southern Women's Museum publishes its [visitor hours and address](https://baotangphunu.com/); the War Remnants Museum publishes its [visitor information and current admission notice](https://baotangchungtichchientranh.vn/vi/tham-quan). Other prices or hours that are not consistently published are marked as approximate or should be confirmed directly. The visitor-fit descriptions are editorial suggestions; no popularity ranking is shown because there is no comparable reliable dataset.

Attraction images are loaded from their image hosts, including Wikimedia Commons and tourism publishers. Online availability and reuse conditions depend on the source; for commercial publication, check each image's rights and attribution requirements or replace it with hotel-owned/licensed photographs. OpenStreetMap map data attribution is visible on the map; see [OpenStreetMap copyright](https://www.openstreetmap.org/copyright).
