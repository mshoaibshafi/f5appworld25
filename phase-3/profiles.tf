

resource "bigip_ltm_profile_http" "http_XForwardedFor" {
  name                  = "/Common/http_XForwardedFor"
  defaults_from         = "/Common/http"
  insert_xforwarded_for = "enabled"
}
