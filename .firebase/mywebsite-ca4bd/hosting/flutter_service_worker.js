'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"assets/AssetManifest.json": "23b02ea37bd11f123bd0ee766aacdc87",
"assets/assets/fonts/Montserrat-Bold.ttf": "1f023b349af1d79a72740f4cc881a310",
"assets/assets/fonts/Montserrat-Regular.ttf": "3fe868a1a9930b59d94d2c1d79461e3c",
"assets/assets/fonts/Montserrat-SemiBold.ttf": "fb428a00b04d4e93deb4d7180814848b",
"assets/assets/fonts/Roboto-Bold.ttf": "b8e42971dec8d49207a8c8e2b919a6ac",
"assets/assets/fonts/Roboto-Light.ttf": "881e150ab929e26d1f812c4342c15a7c",
"assets/assets/fonts/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/assets/fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/fonts/Splash-Regular.ttf": "25b4b5aef6e0296737504c409586a107",
"assets/doc/Certificado%20Desenvolvimento%20Mobile,%20IOS%20e%20WEB%20%20com%20Flutterd.pdf": "170b31a6f0aacc1f44a1ad3a2dcbec41",
"assets/doc/Certificado%20Java%20Bak-end.pdf": "f297cceb71cb94fb0c53a1a23866933f",
"assets/doc/Certificado%20Vue%20JS.pdf": "ea8e5119680de851b06b85c23eb9b57e",
"assets/doc/cv_andre_ramos.pdf": "70d84dbd2b3706fd881631c700be0ab1",
"assets/doc/Declara%C3%A7%C3%A3o%20Gradua%C3%A7%C3%A3o%20ADS.pdf": "b763e57f8de80fecb7b1569e644dd191",
"assets/doc/docker_ferramenta%20essencial.pdf": "02c0ab24e91cda7a2eb2380f993c0902",
"assets/doc/front-end.pdf": "582e663c1cdd12d2b94800f676ad2ab1",
"assets/doc/ui_ux_designer.pdf": "00809ea99029711fc0f1fa6a992fb896",
"assets/FontManifest.json": "b8a2e0621c15dca043f1aab495281b35",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/fonts/Montserrat-Bold.ttf": "1f023b349af1d79a72740f4cc881a310",
"assets/fonts/Montserrat-Regular.ttf": "3fe868a1a9930b59d94d2c1d79461e3c",
"assets/fonts/Montserrat-SemiBold.ttf": "fb428a00b04d4e93deb4d7180814848b",
"assets/fonts/MrsSaintDelafield-Regular.ttf": "e4201f88889581aac5ad0a1dc042d644",
"assets/fonts/Roboto-Bold.ttf": "b8e42971dec8d49207a8c8e2b919a6ac",
"assets/fonts/Roboto-Light.ttf": "881e150ab929e26d1f812c4342c15a7c",
"assets/fonts/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/fonts/Splash-Regular.ttf": "25b4b5aef6e0296737504c409586a107",
"assets/images/ads.png": "0f25e4977fd98778f1bfe9e9ce5e8280",
"assets/images/bootstrap.png": "41f421867da96f7db33fcad674d749b2",
"assets/images/correspondencia.png": "8934aec70730abed2b0f283b0efd5caa",
"assets/images/css-3.png": "cd66e6ac145bbc09609b4daaba39137d",
"assets/images/docker.png": "7716fba552e073f6bca82c1f78fbabe0",
"assets/images/eu.png": "30a5274d08c5b66cb321161a36da5d64",
"assets/images/eu24.png": "573677eca8f29da770b48f25d7454a00",
"assets/images/facebook.png": "160ad3ee1281fbe71198196caf68b357",
"assets/images/figma.png": "ffe5db33d6b9b27724a805cd092d90b2",
"assets/images/firebase.png": "43e70f7faaabde69ccb7a5e5d85a47f8",
"assets/images/flutter.jpg": "a648fd45ad6e93916e44e80a5487decb",
"assets/images/flutter_logo.png": "f254342fd68a8d86f3e7875f423ee7de",
"assets/images/front-end.jpg": "64314275bdad84500dc058c17fd71609",
"assets/images/github.png": "4238218404f9f6809ccbcafcbe3a75a7",
"assets/images/github64x64.png": "2dc32ed64c29cc81810431e55f9df5b5",
"assets/images/gitlab.png": "7c552f2d02ee32f8fb031d543a3d7bd7",
"assets/images/home.png": "88c4ca46ca50a34e4a425803a13bf612",
"assets/images/html.png": "d0aefbcebb8e624ba0d540c4356edfbc",
"assets/images/instagram.png": "8bf4564c054cf591708ea26650fc1bcc",
"assets/images/java.png": "7d9859f8e4db3ccaf7d0c3dea2052f48",
"assets/images/java_logo.png": "74e943d82452f81f6a0bb0b51ac6785d",
"assets/images/js.png": "e318f037af8db27babc1e6166ce594d1",
"assets/images/linkedin.png": "074eb58caa5cd5d0a71dde7f6a3b29c7",
"assets/images/logo-docker.png": "423d846ac39fc383fc7cb749a4da1c76",
"assets/images/logo.png": "4c1e84ae1409b0a37fba29cf7c05c841",
"assets/images/mysql.png": "86abbb54071b1471cd27bb2825e9dc29",
"assets/images/pencil.png": "0ca1b6b75cce858db3206f233ac9f21c",
"assets/images/person.png": "2d51d6a66a359cb6afb73222efaeaa43",
"assets/images/photoshop.png": "bfbc3649c2d9cffe9df3e2365c21435c",
"assets/images/premium.png": "f7194d9d10c459ffeadb83c61bb0e348",
"assets/images/programming.png": "354fc9b883ffce2a5bb9796ca2ba1763",
"assets/images/project1.png": "ffb79cd327359d595cca4be620f357be",
"assets/images/project2.png": "e0ea78ec3fe7714ba9acca88d7baed59",
"assets/images/project3.png": "11a0c179e5889faba5844cf5b4195079",
"assets/images/project4.png": "0ddeed626afee99363861694bbdf6caf",
"assets/images/spring-boot.png": "dd214aa059c1aac41025c13451c1b8aa",
"assets/images/ui_ux.jpg": "2068d6b344865f9dd87e7de0dd980224",
"assets/images/vue_js.png": "e019b088a48c80143332d35dd7ea9263",
"assets/images/vue_js_logo.png": "884d9f290a365d5986e31ca9bc02e22c",
"assets/images/xd.png": "d6452eb6fc480c215abcc25c6525d1a2",
"assets/movies/arrow_down.riv": "418c1126e07cc2143d66b33000e5879d",
"assets/movies/arrow_down_old.riv": "c065add52cdf7fe27dcb1c8e676fd346",
"assets/movies/arrow_leftToRight.riv": "cc89a23d83bfce92a977f5d61d9dc64e",
"assets/movies/percentSmokeBlack.gif": "59e1b30d7a2557bed440927ae9e93994",
"assets/NOTICES": "b3205c022bd3aec20b7e0aeb59515a2e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/shaders/ink_sparkle.frag": "6333b551ea27fd9d8e1271e92def26a9",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2c1d2f865bc98066ad39de5348e1b638",
"/": "2c1d2f865bc98066ad39de5348e1b638",
"main.dart.js": "a4e8d14b7e3b8d685e2eae0bed1660c7",
"manifest.json": "43a1910d3e97d53c8b89fcd1a263a90e",
"version.json": "a10f06dfe4068f167766bc636a5c1755"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
