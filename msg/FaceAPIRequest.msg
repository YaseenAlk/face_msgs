#
# Message for sending an API request to the Face API
#

Header header

string app # the app that is making the Face API request (just an arbitrary string)

string location # will probably be "eastus"
string api_subscription_key

uint8 request_method
uint8 request_type

# Content-Type: usually json, but may be octet-stream if uploading an image
string content_type

# Request's parameters: sent through ROS as a json string;
# Face API appends each parameter to the end of the Request URL
string request_parameters

# Request's Body: depends on Content-Type; could be empty json, non-empty json, or non-empty binary data
string request_body

#
# Constants
#

# request_method - The 5 HTTP request methods that Face API uses:
uint8 HTTP_POST = 0
uint8 HTTP_PUT = 1
uint8 HTTP_DELETE = 2
uint8 HTTP_GET = 3
uint8 HTTP_PATCH = 4

# content_type - The 2 supported content types:
string CONTENT_JSON = "application/json"
string CONTENT_STREAM = "application/octet-stream"

# request_type:

# The following constants cover all of the request types listed on the API Reference as of July 23, 2018
# Link to API Reference: 
# https://eastus.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395236

# Requests for standalone Faces (not associated with a FaceList, LargeFaceList, PersonGroup Person, or LargePersonGroup Person)
# Note: "Face - Find Similar", "Face - Identify", and "Face - Verify" may reference a (Large)FaceList or (Large)PersonGroup
uint8 FACE_DETECT = 0
uint8 FACE_FINDSIMILAR = 1
uint8 FACE_GROUP = 2
uint8 FACE_IDENTIFY = 3
uint8 FACE_VERIFY = 4

# Requests for a regular FaceList (incompatible with LargeFaceList)
uint8 FACELIST_ADDFACE = 5
uint8 FACELIST_CREATE = 6
uint8 FACELIST_DELETE = 7
uint8 FACELIST_DELETEFACE = 8
uint8 FACELIST_GET = 9
uint8 FACELIST_LIST = 10
uint8 FACELIST_UPDATE = 11

# Requests for a LargeFaceList (incompatible with regular FaceList)
uint8 LARGEFACELIST_ADDFACE = 12
uint8 LARGEFACELIST_CREATE = 13
uint8 LARGEFACELIST_DELETE = 14
uint8 LARGEFACELIST_DELETEFACE = 15
uint8 LARGEFACELIST_GET = 16
uint8 LARGEFACELIST_GETFACE = 17
uint8 LARGEFACELIST_GETTRAININGSTATUS = 18
uint8 LARGEFACELIST_LIST = 19
uint8 LARGEFACELIST_LISTFACE = 20
uint8 LARGEFACELIST_TRAIN = 21
uint8 LARGEFACELIST_UPDATE = 22
uint8 LARGEFACELIST_UPDATEFACE = 23

# Requests for a LargePersonGroup (incompatible with regular PersonGroup)
uint8 LARGEPERSONGROUP_CREATE = 24
uint8 LARGEPERSONGROUP_DELETE = 25
uint8 LARGEPERSONGROUP_GET = 26
uint8 LARGEPERSONGROUP_GETTRAININGSTATUS = 27
uint8 LARGEPERSONGROUP_LIST = 28
uint8 LARGEPERSONGROUP_TRAIN = 29
uint8 LARGEPERSONGROUP_UPDATE = 30

# Requests for a Person in a LargePersonGroup (incompatible with a Person in a regular PersonGroup)
uint8 LARGEPERSONGROUPPERSON_ADDFACE = 31
uint8 LARGEPERSONGROUPPERSON_CREATE = 32
uint8 LARGEPERSONGROUPPERSON_DELETE = 33
uint8 LARGEPERSONGROUPPERSON_DELETEFACE = 34
uint8 LARGEPERSONGROUPPERSON_GET = 35
uint8 LARGEPERSONGROUPPERSON_GETFACE = 36
uint8 LARGEPERSONGROUPPERSON_LIST = 37
uint8 LARGEPERSONGROUPPERSON_UPDATE = 38
uint8 LARGEPERSONGROUPPERSON_UPDATEFACE = 39

# Requests for a regular PersonGroup (incompatible with LargePersonGroup)
uint8 PERSONGROUP_CREATE = 40
uint8 PERSONGROUP_DELETE = 41
uint8 PERSONGROUP_GET = 42
uint8 PERSONGROUP_GETTRAININGSTATUS = 43
uint8 PERSONGROUP_LIST = 44
uint8 PERSONGROUP_TRAIN = 45
uint8 PERSONGROUP_UPDATE = 46

# Requests for a Person in a regular PersonGroup (incompatible with a Person in a LargePersonGroup)
uint8 PERSONGROUPPERSON_ADDFACE = 47
uint8 PERSONGROUPPERSON_CREATE = 48
uint8 PERSONGROUPPERSON_DELETE = 49
uint8 PERSONGROUPPERSON_DELETEFACE = 50
uint8 PERSONGROUPPERSON_GET = 51
uint8 PERSONGROUPPERSON_GETFACE = 52
uint8 PERSONGROUPPERSON_LIST = 53
uint8 PERSONGROUPPERSON_UPDATE = 54
uint8 PERSONGROUPPERSON_UPDATEFACE = 55