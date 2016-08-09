#!/usr/bin/env bash
if [ -z ${BEHAT_PARAMS} ]; then
  # Export behat params.
  export BEHAT_PARAMS="{\"extensions\": {\"Behat\\\MinkExtension\": {\"base_url\": \"${BASE_URL}\"},\"Drupal\\\DrupalExtension\": {\"drupal\": {\"drupal_root\": \"${DRUPAL_ROOT}\"}}}}"
fi
# Go to test directory.
cd ${TEST_DIR}
# Run tests.
/root/.composer/vendor/bin/behat --colors
