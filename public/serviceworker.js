console.log("Hello from service worker");

self.addEventListener('push', (event) => {
  let title = (event.data && event.data.text()) || 'Yay a message';
  let body = 'New notification from TurboVerse';
  let tag = 'push-simple-demo-notification-tag';
  let icon = 'https://i.ibb.co/hL5gHYG/unnamed.pngg';

  event.waitUntil(
    self.registration.showNotification(title, { body, icon, tag })
  );
});