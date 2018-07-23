#
# Message for sending an API request to the Face API
#

Header header

string app # the app that is making the Face API request (just an arbitrary string)

string location # will probably be "eastus"
string api_subscription_key

int8 request_method
int8 request_type

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
int8 HTTP_POST = 0
int8 HTTP_PUT = 1
int8 HTTP_DELETE = 2
int8 HTTP_GET = 3
int8 HTTP_PATCH = 4

# content_type - The 2 supported content types:
string CONTENT_JSON = "application/json"
string CONTENT_STREAM = "application/octet-stream"

# request_type:

# The following constants cover all of the request types listed on the API Reference as of July 23, 2018
# Link to API Reference: 
# https://eastus.dev.cognitive.microsoft.com/docs/services/563879b61984550e40cbbe8d/operations/563879b61984550f30395236

# Requests for standalone Faces (not associated with a FaceList, LargeFaceList, PersonGroup Person, or LargePersonGroup Person)
int8 FACE_DETECT = 0
int8 FACE_FINDSIMILAR = 1
int8 FACE_GROUP = 2
int8 FACE_IDENTIFY = 3
int8 FACE_VERIFY = 4

# Requests for a regular FaceList (incompatible with LargeFaceList)
int8 FACELIST_ADDFACE = 5
int8 FACELIST_CREATE = 6
int8 FACELIST_DELETE = 7
int8 FACELIST_DELETEFACE = 8
int8 FACELIST_GET = 9
int8 FACELIST_LIST = 10
int8 FACELIST_UPDATE = 11

# Requests for a LargeFaceList (incompatible with regular FaceList)
int8 LARGEFACELIST_ADDFACE = 12
int8 LARGEFACELIST_CREATE = 13
int8 LARGEFACELIST_DELETE = 14
int8 LARGEFACELIST_DELETEFACE = 15
int8 LARGEFACELIST_GET = 16
int8 LARGEFACELIST_GETFACE = 17
int8 LARGEFACELIST_GETTRAININGSTATUS = 18
int8 LARGEFACELIST_LIST = 19
int8 LARGEFACELIST_LISTFACE = 20
int8 LARGEFACELIST_TRAIN = 21
int8 LARGEFACELIST_UPDATE = 22
int8 LARGEFACELIST_UPDATEFACE = 23

# Requests for a LargePersonGroup (incompatible with regular PersonGroup)
int8 LARGEPERSONGROUP_CREATE = 24
int8 LARGEPERSONGROUP_DELETE = 25
int8 LARGEPERSONGROUP_GET = 26
int8 LARGEPERSONGROUP_GETTRAININGSTATUS = 27
int8 LARGEPERSONGROUP_LIST = 28
int8 LARGEPERSONGROUP_TRAIN = 29
int8 LARGEPERSONGROUP_UPDATE = 30

# Requests for a Person in a LargePersonGroup (incompatible with a Person in a regular PersonGroup)
int8 LARGEPERSONGROUPPERSON_ADDFACE = 31
int8 LARGEPERSONGROUPPERSON_CREATE = 32
int8 LARGEPERSONGROUPPERSON_DELETE = 33
int8 LARGEPERSONGROUPPERSON_DELETEFACE = 34
int8 LARGEPERSONGROUPPERSON_GET = 35
int8 LARGEPERSONGROUPPERSON_GETFACE = 36
int8 LARGEPERSONGROUPPERSON_LIST = 37
int8 LARGEPERSONGROUPPERSON_UPDATE = 38
int8 LARGEPERSONGROUPPERSON_UPDATEFACE = 39

# Requests for a regular PersonGroup (incompatible with LargePersonGroup)
int8 PERSONGROUP_CREATE = 40
int8 PERSONGROUP_DELETE = 41
int8 PERSONGROUP_GET = 42
int8 PERSONGROUP_GETTRAININGSTATUS = 43
int8 PERSONGROUP_LIST = 44
int8 PERSONGROUP_TRAIN = 45
int8 PERSONGROUP_UPDATE = 46

# Requests for a Person in a regular PersonGroup (incompatible with a Person in a LargePersonGroup)
int8 PERSONGROUPPERSON_ADDFACE = 47
int8 PERSONGROUPPERSON_CREATE = 48
int8 PERSONGROUPPERSON_DELETE = 49
int8 PERSONGROUPPERSON_DELETEFACE = 50
int8 PERSONGROUPPERSON_GET = 51
int8 PERSONGROUPPERSON_GETFACE = 52
int8 PERSONGROUPPERSON_LIST = 53
int8 PERSONGROUPPERSON_UPDATE = 54
int8 PERSONGROUPPERSON_UPDATEFACE = 55