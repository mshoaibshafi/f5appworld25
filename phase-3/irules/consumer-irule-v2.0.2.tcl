# consumer-irule-v2.0.2

when CLIENT_ACCEPTED {
  set irule_debug 0

}

when LB_SELECTED {

  # logging for getting pool and pool member data
  if { ${irule_debug} } { log local0. "Debug is enabled" }
}

when HTTP_REQUEST {

}

when HTTP_RESPONSE {

  if { !([HTTP::header exists "X-Frame-Options"])} { HTTP::header insert X-Frame-Options "SAMEORIGIN" }
  if { !([HTTP::header exists "X-Content-Type-Options"])} { HTTP::header insert X-Content-Type-Options "nosniff" }

}