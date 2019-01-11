#!/bin/sh

confd -onetime -backend ssm --prefix /api -node https://ssm.us-west-2.amazonaws.com

exec $@
