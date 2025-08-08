// Polyfill pour les bibliothèques Node.js
(window as any).global = window;

import { importProvidersFrom } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { bootstrapApplication } from '@angular/platform-browser';
import { App } from './app/app';

bootstrapApplication(App, {
  providers: [importProvidersFrom(FormsModule)],
}).catch((err) => console.error(err));
