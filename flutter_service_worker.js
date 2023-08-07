'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-maskable-512.png": "688ce5c2210b4e3f518f9ff0694b5ba8",
"icons/Icon-maskable-192.png": "0f26a5c8d27e8f28631f1c74baaeb978",
"icons/Icon-192.png": "0f26a5c8d27e8f28631f1c74baaeb978",
"icons/Icon-512.png": "688ce5c2210b4e3f518f9ff0694b5ba8",
"index.html": "d6897fd2669995c574d25720c85a32f7",
"/": "d6897fd2669995c574d25720c85a32f7",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"manifest.json": "3fc29f9294b755bca0378065b89e216e",
"favicon.png": "85c282cababf23f7686a5fe2fddbd53b",
"assets/fonts/MaterialIcons-Regular.otf": "6fd813db96d97b7c85efeb5383e6bf6d",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "0d667ed168810181b9036153ea597fc8",
"assets/assets/images/result_1644065.jpeg": "624be6e585abdba6f684facaff132809",
"assets/assets/images/result_1643962.jpeg": "f6abb241058b0f57f4dadf03f49b57a4",
"assets/assets/images/article_1.png": "dda95c4d08becdd3ee947ba02cbb0b91",
"assets/assets/images/result_1643960.jpeg": "ffb745bd7c1975c739fe1fb8b1b86eb3",
"assets/assets/images/article_2.png": "aaaa5d1d216b5b39b7d050e6f40239b0",
"assets/assets/icons/check.png": "3721bfe6e850ac26719c785a39fc2f4f",
"assets/assets/icons/clock.png": "907e3ab842cb7e75badb04f99a45f1a4",
"assets/assets/icons/message.png": "dde17a88a1510d2a4a1f0f1eedab830e",
"assets/assets/icons/mastercard.png": "cf017c3df4b4b6ce716a19b6d146a93c",
"assets/assets/icons/phone_2.png": "ed295946fdd6a286e23917d7ada27f1d",
"assets/assets/icons/group.png": "e49e17e54e7126dca14233a9d5463225",
"assets/assets/icons/paypal.png": "905ade5949422354730d3fc4cce711c1",
"assets/assets/icons/twitter.png": "3d4dc412554c3209fcb65b984f485050",
"assets/assets/icons/user.png": "b97616329ec86539d1f3f70b308f259e",
"assets/assets/icons/phone.png": "ba55e02491f2bf2fd9452459056de9e8",
"assets/assets/icons/apple.png": "2b1f087eea4786318aa3aa409a449cb7",
"assets/assets/icons/plane.png": "67cd63f6976781615aa4b6e6aade5dd7",
"assets/assets/icons/wallet.png": "01f313d8154ddbeaaf1b525dee5ef1a5",
"assets/assets/icons/mail.png": "a125820b729c874aa67997a6da8c8ec5",
"assets/assets/icons/rocket.png": "46a7e4ab3201ed8646fc6684c2a8bb23",
"assets/assets/icons/award.png": "bd58995ce4b5d14ea8711d6beb33eac9",
"assets/assets/icons/linkedin.png": "afd63f8f653eccb2fe546b2548bcda8a",
"assets/assets/icons/amazon.png": "76b875511c948ff031b60b6476a0f715",
"assets/assets/icons/facebook.png": "c82999206833491993f1a777a6d5cd16",
"assets/assets/icons/close.png": "edcf494b92a5c32208362b2094286f46",
"assets/assets/icons/visa.png": "c4bd375e38d9eec842b9cd15607e233b",
"assets/assets/icons/android.png": "b782fba4a11a5eff9e2ee5f19aa49d0d",
"assets/assets/icons/doc.png": "3b42945ff914651d932014f66e2c8bbc",
"assets/assets/icons/budget.png": "85ac42749d4754afb26ff34ba53edbd3",
"assets/assets/icons/pin.png": "45a0a753a508b8f5481420c1752c768e",
"assets/assets/icons/profile.png": "4594d32ce3d7486fef7de034d79147e6",
"assets/assets/icons/add.png": "a49962189db3a810482533d43733d512",
"assets/assets/icons/bulb.png": "de764e8fb2e35482a01fc33904cfe84b",
"assets/assets/icons/logo.png": "206b4c05059a6085ea2a48dc59f58c79",
"assets/assets/icons/instagram.png": "4f5ee7f8000f1aec4e57d261f833fc58",
"assets/assets/ilustrations/ilustration_7.png": "b2d40f74ca9e3da828f0e775d6e61af1",
"assets/assets/ilustrations/ilustration_4.png": "698a2fb5ac9d5838e00ebe016509fdbb",
"assets/assets/ilustrations/ilustration_1.png": "101115b37086e89e4bc513a122429e39",
"assets/assets/ilustrations/ilustration_5.png": "f3e838b1a23d76f8f247cb168368ee6a",
"assets/assets/ilustrations/ilustration_10.png": "76d771131d6965cbb66a0b8265601716",
"assets/assets/ilustrations/ilustration_12.png": "cd24bf95970278b7b18871d56154c602",
"assets/assets/ilustrations/ilustration_2.png": "bc5cfbc1017f447b8f9dd96a2cb3f867",
"assets/assets/ilustrations/ilustration_8.png": "8d11b5e9931bf792c0e1f7ba00b2ed6f",
"assets/assets/ilustrations/ilustration_9.png": "4cac3738185d5f9f62990c9c3361b893",
"assets/assets/ilustrations/ilustration_11.png": "75eb101bd7512b767765e3fb3776d1ef",
"assets/assets/ilustrations/home_banner.png": "6438b15fccfaa8153d5d798bc7f31f28",
"assets/assets/ilustrations/ilustration_13.png": "21ed063c55d3763dec783e4140101526",
"assets/assets/ilustrations/ilustration_6.png": "23264511053e922871172695e5e09b50",
"assets/assets/ilustrations/ilustration_3.png": "55f28931e467c151bce9fbb8eb40f47f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/AssetManifest.json": "38dae3a94aa4e31866f9826fb8da3120",
"assets/NOTICES": "cfff128d7beb1f1742b9b9f1a03c83a6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"version.json": "11e1a177d57c5da2bc6e3a6acc3010f4",
"main.dart.js": "cc323a71e8d83c4ce7745dc822cca0f3",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
