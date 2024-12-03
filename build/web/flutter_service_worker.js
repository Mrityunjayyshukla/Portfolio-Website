'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "346a81fc22835b6ca36c5b96031dc605",
"assets/AssetManifest.bin.json": "30d30c879d389c81a440ae005225a260",
"assets/AssetManifest.json": "4d1f6a0a3705ec9e67108d31a35cd16a",
"assets/assets/icons/about.svg": "7a942451ae4af9e012d9435a02891e33",
"assets/assets/icons/artstation.svg": "363e24bed29d84b7daeab0574a670768",
"assets/assets/icons/behance.svg": "40c285821217a03368c82402ca9601cd",
"assets/assets/icons/down_arrow.svg": "2fb2b9be53c7dbddfa1a7d89a53d0867",
"assets/assets/icons/experiences.svg": "3e66e222e3af183c13200f8c9e265d4c",
"assets/assets/icons/github.svg": "2c96808942a6678244a9daef6f0da2b1",
"assets/assets/icons/home.svg": "99e0bd82009ba9e98aca6f8354393f87",
"assets/assets/icons/linkedin.svg": "4ee9cf5d616d673ddf44af5c2147bd2d",
"assets/assets/icons/mail.svg": "3dbf1b6d33ee1bcf6bcb7a2b83bcc1cb",
"assets/assets/icons/projects.svg": "7ce8a64d38ca20c7055eae4f8edde214",
"assets/assets/icons/resume.svg": "483e7b60a9c43b3e6d91082a3f0c865f",
"assets/assets/icons/skills_icons/adobe_xd.svg": "9d71e7661d3cb3d800d47482ceaabc87",
"assets/assets/icons/skills_icons/blender.svg": "85fee1db0cfb4438919d226da5060359",
"assets/assets/icons/skills_icons/canva.svg": "b79103b2f10105fe2f09f30346a0b9dd",
"assets/assets/icons/skills_icons/cpp.svg": "797c85b510ba6603dd20d35aed8d4089",
"assets/assets/icons/skills_icons/dart.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/icons/skills_icons/davinci.svg": "d945aa8a1f6632d4d061c46ed538d923",
"assets/assets/icons/skills_icons/django.svg": "e6e3f5dc7c199f384e5814c97a683578",
"assets/assets/icons/skills_icons/Figma.svg": "e4d477f4b50ca750010cc10c5a5bbb53",
"assets/assets/icons/skills_icons/firebase.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/icons/skills_icons/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/icons/skills_icons/git.svg": "395d8c6917b47ac4dcde3600673f6519",
"assets/assets/icons/skills_icons/github.svg": "c23a95fcb4b1d25765107e4e73b06438",
"assets/assets/icons/skills_icons/lightroom.svg": "d56a17510100941593ccdb5eacc49032",
"assets/assets/icons/skills_icons/mysql.svg": "99d08f9e2966e406024b603a51460338",
"assets/assets/icons/skills_icons/numpy.svg": "d7a842a43d69c1559e9500b43fb3ab40",
"assets/assets/icons/skills_icons/pandas.svg": "3afd4be1504f26751ad47047484c8d80",
"assets/assets/icons/skills_icons/photoshop.svg": "7cadf0573ef3f1d5a0557b61a04f5762",
"assets/assets/icons/skills_icons/python.svg": "85368627053aa7df8e1340c0f29acdb8",
"assets/assets/icons/twitter.svg": "7cba76736f7e19c9b4d99b520aa58802",
"assets/assets/icons/up_arrow.svg": "4c5dc7ca8e28f37999433f32b13f2533",
"assets/assets/images/certficate_icons/coincent.png": "f97a1835abf9695639cef76264825eec",
"assets/assets/images/certficate_icons/dbms.png": "ea40e323488f692b70bc8b6963654cfb",
"assets/assets/images/certficate_icons/hackerrank.png": "15d483d0097a1fec89e2bc2e7a866066",
"assets/assets/images/certficate_icons/ml.png": "81be140f4c8b6f6655c78baaaf3bd821",
"assets/assets/images/certficate_icons/mysql.png": "a97fd6c8e066250131fab03239865a63",
"assets/assets/images/certficate_icons/nptel.png": "a071bdb8bc7fa68f901f9768ff149696",
"assets/assets/images/certficate_icons/python.png": "02fcfda12a1a76a15bb0940993edef29",
"assets/assets/images/certficate_icons/udemy.png": "c6d241a824e417c2e195bb2eba0671cb",
"assets/assets/images/certificate_b.png": "551630c26169adad5803629fe8f4b148",
"assets/assets/images/projects/ThreeD-1.jpg": "22d9c15d25dec1cac5b63669925cb059",
"assets/assets/images/projects/ThreeD-2.jpg": "585f2225d63ecd517781185a88d9257e",
"assets/assets/images/projects/ThreeD-3.jpg": "8c41a952fd4dd2b8e9b39b78fed4c9e7",
"assets/assets/images/projects/ThreeD-4.jpg": "646275bbd5e13a0b6a4ecf6f239e3f62",
"assets/assets/images/projects/ThreeD-5.jpg": "47a5f255f7386320378b3644b64231db",
"assets/assets/images/projects/UX-1.png": "bb5eb55e847b7e2d9d4d5ba58839f3d9",
"assets/assets/images/projects/UX-2.png": "6e3b0eb5b713016bf573b71b9ad5ad35",
"assets/assets/images/projects/UX-3.png": "f78fd6dc3b7164516cec59d07a95c4c0",
"assets/assets/memoji.png": "b24c6f07299e5ead4601eb3157432e6a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "facf1e777bb73971dafd8674a14fec19",
"assets/NOTICES": "ef40432d84395a78fb041f3096b1daf0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "de27f912e40a372c22a069c1c7244d9b",
"canvaskit/canvaskit.js.symbols": "b9b989e4f3e26aaad6af55d5774531cd",
"canvaskit/canvaskit.wasm": "48eed93fcdb7fee943b7762df9cc4968",
"canvaskit/chromium/canvaskit.js": "73343b0c5d471d1114d7f02e06c1fdb2",
"canvaskit/chromium/canvaskit.js.symbols": "3b0b115a04a381110a8da24b1d57af73",
"canvaskit/chromium/canvaskit.wasm": "b2796d8a9a88b6ababa963457169b7c2",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "3c62f7cf5b41959dcb752d0009cb3702",
"canvaskit/skwasm.wasm": "af14e9eb8c72bbde711518702996df83",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "4b20d8334146ec1c050282f7bd2771b8",
"canvaskit/skwasm_st.wasm": "e80ff02498184d10ab6fea4106a340dc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "d3e975c73be35fe2cb91515b9815883f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "510120590b61e2d30c387d4022ef629e",
"/": "510120590b61e2d30c387d4022ef629e",
"main.dart.js": "2beda413e1e24977c0cd1dd7faac1544",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
