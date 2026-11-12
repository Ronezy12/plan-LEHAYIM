// Cache hors ligne des Plans DJ RON.
// Pages et données (HTML, JSON) : réseau d'abord, pour que l'organisateur voie tout de suite la dernière version ; cache si hors ligne.
// Images, icônes, scripts : cache d'abord, mis à jour en arrière-plan.
const C='plans-djron-v2';
self.addEventListener('install',e=>{e.waitUntil(caches.open(C).then(c=>c.addAll(['./','index.html','data/state.json','manifest.webmanifest','assets/icon-192.png'])).then(()=>self.skipWaiting()));});
self.addEventListener('activate',e=>{e.waitUntil(caches.keys().then(k=>Promise.all(k.filter(x=>x!==C).map(x=>caches.delete(x)))).then(()=>self.clients.claim()));});
self.addEventListener('fetch',e=>{const u=new URL(e.request.url);if(e.request.method!=='GET'||u.origin!==location.origin)return;
  const fresh=e.request.mode==='navigate'||/\.(json|html)$/.test(u.pathname)||u.pathname.endsWith('/');
  if(fresh){e.respondWith(fetch(e.request,{cache:'no-store'}).then(r=>{if(r.ok&&!u.search){const cp=r.clone();caches.open(C).then(c=>c.put(e.request,cp));}return r;}).catch(()=>caches.match(e.request,{ignoreSearch:true}).then(h=>h||Response.error())));return;}
  e.respondWith(caches.open(C).then(async c=>{const hit=await c.match(e.request);const net=fetch(e.request).then(r=>{if(r.ok)c.put(e.request,r.clone());return r;}).catch(()=>hit);return hit||net;}));});
