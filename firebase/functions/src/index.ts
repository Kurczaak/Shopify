import * as admin from "firebase-admin";

/* eslint @typescript-eslint/no-var-requires: "off" */

admin.initializeApp();

exports.on_add_product_to_shop = require("./on_add_product_to_shop");
exports.addItemToCart = require("./cart");
