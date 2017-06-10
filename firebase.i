%module firebase

%{
#include "firebase/database.h"
#include "firebase/auth.h"
%}

%include "std_string.i"
%include "firebase/internal/common.h"
%include "firebase/variant.h"
%include "firebase/database/common.h"
%include "firebase/future.h"
%include "firebase/database/mutable_data.h"
%include "firebase/database/data_snapshot.h"
%include "firebase/database/transaction.h"
%include "firebase/database/disconnection.h"
%include "firebase/app.h"
%include "firebase/database/listener.h"
%include "firebase/database/query.h"
%include "firebase/database/database_reference.h"
%include "firebase/database.h"
%include "firebase/auth/credential.h"
%include "firebase/auth/types.h"
%include "firebase/auth/user.h"

// TODO: should fix this
#define DOXYGEN
%include "firebase/auth.h"

namespace firebase {
    %template(AuthUser) Future<auth::User*>;
}
