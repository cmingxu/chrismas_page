# -*- encoding : utf-8 -*-
# Be sure to restart your server when you modify this file.

Site::Application.config.session_store :cookie_store, key: '_site_session', :expire => 1.year
