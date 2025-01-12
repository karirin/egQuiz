/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     envoy/type/http/v3/path_transformation.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#include <stddef.h>
#include "upb/msg_internal.h"
#include "envoy/type/http/v3/path_transformation.upb.h"
#include "udpa/annotations/status.upb.h"
#include "validate/validate.upb.h"

#include "upb/port_def.inc"

static const upb_MiniTable_Sub envoy_type_http_v3_PathTransformation_submsgs[1] = {
  {.submsg = &envoy_type_http_v3_PathTransformation_Operation_msginit},
};

static const upb_MiniTable_Field envoy_type_http_v3_PathTransformation__fields[1] = {
  {1, UPB_SIZE(0, 0), UPB_SIZE(0, 0), 0, 11, kUpb_FieldMode_Array | (kUpb_FieldRep_Pointer << kUpb_FieldRep_Shift)},
};

const upb_MiniTable envoy_type_http_v3_PathTransformation_msginit = {
  &envoy_type_http_v3_PathTransformation_submsgs[0],
  &envoy_type_http_v3_PathTransformation__fields[0],
  UPB_SIZE(8, 8), 1, kUpb_ExtMode_NonExtendable, 1, 255, 0,
};

static const upb_MiniTable_Sub envoy_type_http_v3_PathTransformation_Operation_submsgs[2] = {
  {.submsg = &envoy_type_http_v3_PathTransformation_Operation_NormalizePathRFC3986_msginit},
  {.submsg = &envoy_type_http_v3_PathTransformation_Operation_MergeSlashes_msginit},
};

static const upb_MiniTable_Field envoy_type_http_v3_PathTransformation_Operation__fields[2] = {
  {2, UPB_SIZE(4, 8), UPB_SIZE(-1, -1), 0, 11, kUpb_FieldMode_Scalar | (kUpb_FieldRep_Pointer << kUpb_FieldRep_Shift)},
  {3, UPB_SIZE(4, 8), UPB_SIZE(-1, -1), 1, 11, kUpb_FieldMode_Scalar | (kUpb_FieldRep_Pointer << kUpb_FieldRep_Shift)},
};

const upb_MiniTable envoy_type_http_v3_PathTransformation_Operation_msginit = {
  &envoy_type_http_v3_PathTransformation_Operation_submsgs[0],
  &envoy_type_http_v3_PathTransformation_Operation__fields[0],
  UPB_SIZE(8, 16), 2, kUpb_ExtMode_NonExtendable, 0, 255, 0,
};

const upb_MiniTable envoy_type_http_v3_PathTransformation_Operation_NormalizePathRFC3986_msginit = {
  NULL,
  NULL,
  UPB_SIZE(0, 0), 0, kUpb_ExtMode_NonExtendable, 0, 255, 0,
};

const upb_MiniTable envoy_type_http_v3_PathTransformation_Operation_MergeSlashes_msginit = {
  NULL,
  NULL,
  UPB_SIZE(0, 0), 0, kUpb_ExtMode_NonExtendable, 0, 255, 0,
};

static const upb_MiniTable *messages_layout[4] = {
  &envoy_type_http_v3_PathTransformation_msginit,
  &envoy_type_http_v3_PathTransformation_Operation_msginit,
  &envoy_type_http_v3_PathTransformation_Operation_NormalizePathRFC3986_msginit,
  &envoy_type_http_v3_PathTransformation_Operation_MergeSlashes_msginit,
};

const upb_MiniTable_File envoy_type_http_v3_path_transformation_proto_upb_file_layout = {
  messages_layout,
  NULL,
  NULL,
  4,
  0,
  0,
};

#include "upb/port_undef.inc"

