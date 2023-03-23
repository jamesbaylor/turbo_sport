// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller";
import PriceController from "./price_controller"; 
import FlashController from "./flash_controller";
import StorageController from "./storage_controller"
application.register("hello", HelloController)
application.register("price", PriceController)
application.register("flash", FlashController)
application.register("storage", StorageController)
import PaginationController from './pagination_controller';
import SearchController from "./search_controller"
application.register('pagination', PaginationController);
application.register("search", SearchController)
