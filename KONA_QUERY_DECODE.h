/*
 * KONA_QUERY_DECODE.h - host query tokens of the InfiniteReality2 pipe
 *
 * Token numbers a client writes into the pipe to read state back. One define per
 * token; the name is a plain-words role label, not a vendor name. Each token is
 * run by the pipe processor, which reads a fixed number of payload words and
 * then writes its reply. A driver that omits a query row hangs waiting for the
 * reply, so this set is complete for the first configuration (one Onyx2, one
 * InfiniteReality2 pipe).
 *
 * Derivation: the token numbers and roles are read from the pipe firmware's
 * token map and from the shipped client's query senders; the grade on each line
 * is the grade the back-end definitions table gives the row. The table is
 * docs/command-table.md, section 2.13; scripts/kona_checks.py keeps the two
 * and the generated Rust in step.
 */
#ifndef KONA_QUERY_DECODE_H
#define KONA_QUERY_DECODE_H

#include <stdint.h>

#define KONA_QUERY_CURRENT_VERTEX_ATTRIBUTES 0x03b /* established */
#define KONA_QUERY_CLIP_PLANE 0x03c /* established */
#define KONA_QUERY_RASTER_POSITION_STATE 0x03d /* established */
#define KONA_QUERY_PENDING_ERROR 0x03e /* established */
#define KONA_QUERY_LIGHT 0x041 /* established */
#define KONA_QUERY_MATERIAL 0x046 /* established */
#define KONA_QUERY_PIXEL_MAP 0x048 /* established */
#define KONA_QUERY_POLYGON_STIPPLE 0x04b /* established */
#define KONA_QUERY_STATE 0x04c /* established */
#define KONA_QUERY_TEXTURE_ENVIRONMENT 0x04d /* established */
#define KONA_QUERY_TEXTURE_GENERATION 0x050 /* established */
#define KONA_QUERY_TEXTURE_IMAGE 0x052 /* established */
#define KONA_QUERY_COLOUR_TABLE 0x0ea /* established */
#define KONA_QUERY_COLOUR_TABLE_PARAMETERS 0x0ec /* established */
#define KONA_QUERY_LINE_MODE_LIMIT_TABLE 0x0ee /* established */
#define KONA_QUERY_CONVOLUTION_FILTER 0x0f4 /* established */
#define KONA_QUERY_SEPARABLE_FILTER 0x0f7 /* established */
#define KONA_QUERY_PIXEL_TRANSFORM_PARAMETERS 0x0fa /* established */
#define KONA_QUERY_HISTOGRAM 0x104 /* established */
#define KONA_QUERY_HISTOGRAM_PARAMETERS 0x105 /* established */
#define KONA_QUERY_MIN_MAX_RESULTS 0x109 /* established */
#define KONA_QUERY_MIN_MAX_PARAMETERS 0x10a /* established */
#define KONA_QUERY_ENGINE_SIDE_TEXTURE_ATTRIBUTES 0x134 /* established */
#define KONA_QUERY_DEFORMATION_STATE 0x1c6 /* established */
#define KONA_QUERY_ENGINE_TRANSFORM_ATTRIBUTES 0x1cb /* established */
#define KONA_QUERY_BOARD_CONFIGURATION_BLOCK 0x1e9 /* established */

#endif
