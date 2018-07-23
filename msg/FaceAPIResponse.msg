#
# Message for receiving a response from the Face API
#

Header header

string app # the app that is receiving the Face API response

int8 response_type

# Response is always sent back as a json
string response

#
# Constants
#

# response_type:

# The following constants cover all of the HTTP Responses (that I could find) on the API Reference as of July 23, 2018
# Link to API Reference: 
# https://eastus.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395236

# Successful calls
uint8 RSP_200_SUCCESS_GENERAL = 0           # Most request types use this status code for successful calls
uint8 RSP_202_SUCCESS_TRAINING = 1          # For some reason, the Train requests use 202 for their success status code

# Unsuccessful calls
uint8 RSP_400_FAIL_ARGUMENT = 2             # Common fail response, usually because of an issue with an argument/parameter
uint8 RSP_401_FAIL_SUBKEY = 3               # Usually issue with subscription key, but can also be used if there's a bad argument
uint8 RSP_403_FAIL_QUOTA = 4                # Usually appears if user hits the API call quota or if they hit max capacity on a list (e.g. too many faces for a Person)
uint8 RSP_404_FAIL_NOTFOUND = 5             # Usually appears if the API cannot find a specified (Large)PersonGroup or (Large)FaceList
uint8 RSP_408_FAIL_TIMEOUT = 6              # Happens if the API call takes too long on the server side
uint8 RSP_409_FAIL_RESOURCECONFLICT = 7     # Happens if a resource already exists, a needed resource is in use, or if something is still Training
uint8 RSP_415_FAIL_UNSUPPORTEDMEDIA = 8     # Happens if an incorrect Content-Type is used in the API Request
uint8 RSP_429_FAIL_RATELIMIT = 9            # Happens if the user hits the API Rate limit on their subscription (too many calls within a certain timeframe)

# 200 - Success
# 202 - Success - Only for Training (???)
# 
# 400 - Issue with Argument
# 401 - Subscription Key or Issue with Argument
# 403 - Quota reached
# 404 - Argument not found
# 408 - Timeout
# 409 - Group is still Training or ConcurrentOperationConflict on resource or Resource already exists
# 415 - Unsupported Media
# 429 - Rate Limit
