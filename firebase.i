%module firebase

%{
#include "firebase/database.h"
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
