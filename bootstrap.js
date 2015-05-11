/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
"use strict";

const { classes: Cc, interfaces: Ci, utils: Cu } = Components;

Cu.import("resource://gre/modules/Services.jsm");

const PREF_NAME = "distribution.test.addonEnabled";

function startup(data, reason) {
  Services.prefs.setBoolPref(PREF_NAME, true);
}

function shutdown(data, reason) {
  Services.prefs.clearUserPref(PREF_NAME);
}

function install(aData, aReason) {
}

function uninstall(aData, aReason) {
}
