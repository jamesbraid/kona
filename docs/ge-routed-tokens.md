# Routed host tokens

Tokens whose token-map word has bit 0 set never reach an ARM handler: the host interface forwards them to the geometry distributor or to the engines. [ge.md](ge.md) and [ucode/ged.md](../ucode/ged.md) give the layout of the map word; this page decodes it per token and says what each one does for the pipe. Every row cites its map word. The map word fields are **established** (decoded from `ucode/icu_map.tsv`, which is read from the ARM image); the effect column is **inferred** from those fields, the distributor and engine listings, and the library routine that sends the token.

In the geometry form (map bit 31 set) the fields are: the word offset of the attribute in the vertex record, the vertex flag, the float, unsigned and normalise flags, how many trailing components the hardware fills with defaults, how many bytes of the last data word are valid, and the component size. "Count" is the map word's count field as read, not a payload length.

## Colour, texture coordinate and vertex data

Each token carries one attribute of the current vertex. Vertex data are not converted by the ARM; the distributor stores the converted components at the record word shown.

| Token | Map word | Command | Count | Size | Record word | Defaults filled | Last-word bytes | Data | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `HP_COLOR3B` | entry 0x930850c7 | 16 | 3 | byte | 8 | 1 | 3 | normalised | `__glkonim_Color3b` | Three signed bytes scaled into the colour range: the library packs red and green into the token word and sends blue in the following word, and the hardware fills alpha. | inferred |
| `HP_COLOR3D` | entry 0xfa485187 | 144 | 6 | double | 8 | 1 | 4 | float | `__glkonim_Color3d` | Current colour from three doubles narrowed to single precision; the hardware fills in alpha. | inferred |
| `HP_COLOR3F` | entry 0xda4850c7 | 144 | 3 | 32-bit | 8 | 1 | 4 | float | `__glkonim_Color3f` | Current colour from three floats taken as they are; the hardware fills in alpha. | inferred |
| `HP_COLOR3I` | entry 0xdb0850c7 | 16 | 3 | 32-bit | 8 | 1 | 4 | normalised | `__glkonim_Color3i` | Three signed integers, each in its own full word after the token, are scaled into the colour range; the hardware fills alpha, and the store routine writes three words. | inferred |
| `HP_COLOR3S` | entry 0xab0850c7 | 16 | 3 | short | 8 | 1 | 2 | normalised | `__glkonim_Color3s` | Three signed shorts scaled into the colour range, the first component in the token word's upper bits and the other two in the word after it; alpha is filled by the hardware. | inferred |
| `HP_COLOR3UB` | entry 0x938850c7 | 272 | 3 | byte | 8 | 1 | 3 | unsigned normalised | `__glkonim_Color3ub` | Three unsigned bytes normalised over the full byte range: two of them ride in the token word and the third opens the next word, while the hardware fills alpha. | inferred |
| `HP_COLOR3UI` | entry 0xdb8850c7 | 272 | 3 | 32-bit | 8 | 1 | 4 | unsigned normalised | `__glkonim_Color3ui` | Three unsigned integer words follow the token, one per component, each normalised over the unsigned integer range, and the hardware fills alpha for the colour. | inferred |
| `HP_COLOR3US` | entry 0xab8850c7 | 272 | 3 | short | 8 | 1 | 2 | unsigned normalised | `__glkonim_Color3us` | Three unsigned shorts, the first packed into the upper bits of the token word and the other two in the following word, are normalised and the hardware fills alpha. | inferred |
| `HP_COLOR4B` | entry 0x99085107 | 16 | 4 | byte | 8 | 0 | 4 | normalised | `__glkonim_Color4b` | Four signed bytes with alpha scaled into the colour range: two components sit in the token word and the other two in the word that follows. | inferred |
| `HP_COLOR4D` | entry 0xf8485007 | 144 | 0 | double | 8 | 0 | 4 | float | `__glkonim_Color4d` | Current colour from four doubles narrowed to single precision; alpha comes from the data. | inferred |
| `HP_COLOR4F` | entry 0xd8485107 | 144 | 4 | 32-bit | 8 | 0 | 4 | float | `__glkonim_Color4f` | Current colour from four floats taken as they are; alpha comes from the data. | inferred |
| `HP_COLOR4I` | entry 0xd9085107 | 16 | 4 | 32-bit | 8 | 0 | 4 | normalised | `__glkonim_Color4i` | Four signed integers, each occupying one word after the token, are scaled into the colour range to give red, green, blue and alpha; the store routine writes four words. | inferred |
| `HP_COLOR4S` | entry 0xb9085107 | 16 | 4 | short | 8 | 0 | 4 | normalised | `__glkonim_Color4s` | Four signed shorts with alpha: the first short shares the token word's upper bits and the remaining three sit in the words that follow, all scaled into the colour range. | inferred |
| `HP_COLOR4UB` | entry 0x99885107 | 272 | 4 | byte | 8 | 0 | 4 | unsigned normalised | `__glkonim_Color4ub` | Four unsigned bytes with alpha, two packed into the token word and two in the next word, normalised over the full unsigned byte range. | inferred |
| `HP_COLOR4UI` | entry 0xd9885107 | 272 | 4 | 32-bit | 8 | 0 | 4 | unsigned normalised | `__glkonim_Color4ui` | Four unsigned integer words after the token set red, green, blue and alpha of the current colour; each is normalised over the unsigned integer range. | inferred |
| `HP_COLOR4US` | entry 0xb9885107 | 272 | 4 | short | 8 | 0 | 4 | unsigned normalised | `__glkonim_Color4us` | Four unsigned shorts with alpha: the first sits in the upper bits of the token word and the other three follow in the words after it, each normalised. | inferred |

| Token | Map word | Command | Count | Size | Record word | Defaults filled | Last-word bytes | Data | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `HP_TEXCOORD1D` | entry 0xfe496087 | 146 | 2 | double | 16 | 3 | 4 | float | `__glkonim_TexCoord1d` | Current texture coordinate of one doubles narrowed to single precision; the three remaining components get defaults. | inferred |
| `HP_TEXCOORD1F` | entry 0xde496047 | 146 | 1 | 32-bit | 16 | 3 | 4 | float | `__glkonim_TexCoord1f` | Current texture coordinate of one floats taken as they are; the three remaining components get defaults. | inferred |
| `HP_TEXCOORD1I` | entry 0xde096047 | 18 | 1 | 32-bit | 16 | 3 | 4 | plain integer | `__glkonim_TexCoord1i` | Current texture coordinate of one signed integers converted without scaling; the three remaining components get defaults. | inferred |
| `HP_TEXCOORD1S` | entry 0xae096047 | 18 | 1 | short | 16 | 3 | 2 | plain integer | `__glkonim_TexCoord1s` | Current texture coordinate of one signed shorts converted without scaling; the three remaining components get defaults. | inferred |
| `HP_TEXCOORD2D` | entry 0xfc496107 | 146 | 4 | double | 16 | 2 | 4 | float | `__glkonim_TexCoord2d` | Current texture coordinate of two doubles narrowed to single precision; the last two components get defaults. | inferred |
| `HP_TEXCOORD2F` | entry 0xdc496087 | 146 | 2 | 32-bit | 16 | 2 | 4 | float | `__glkonim_TexCoord2f` | Current texture coordinate of two floats taken as they are; the last two components get defaults. | inferred |
| `HP_TEXCOORD2I` | entry 0xdc096087 | 18 | 2 | 32-bit | 16 | 2 | 4 | plain integer | `__glkonim_TexCoord2i` | Current texture coordinate of two signed integers converted without scaling; the last two components get defaults. | inferred |
| `HP_TEXCOORD2S` | entry 0xbc096087 | 18 | 2 | short | 16 | 2 | 4 | plain integer | `__glkonim_TexCoord2s` | Current texture coordinate of two signed shorts converted without scaling; the last two components get defaults. | inferred |
| `HP_TEXCOORD3D` | entry 0xfa496187 | 146 | 6 | double | 16 | 1 | 4 | float | `__glkonim_TexCoord3d` | Current texture coordinate of three doubles narrowed to single precision; the fourth component gets its default. | inferred |
| `HP_TEXCOORD3F` | entry 0xda4960c7 | 146 | 3 | 32-bit | 16 | 1 | 4 | float | `__glkonim_TexCoord3f` | Current texture coordinate of three floats taken as they are; the fourth component gets its default. | inferred |
| `HP_TEXCOORD3I` | entry 0xda0960c7 | 18 | 3 | 32-bit | 16 | 1 | 4 | plain integer | `__glkonim_TexCoord3i` | Current texture coordinate of three signed integers converted without scaling; the fourth component gets its default. | inferred |
| `HP_TEXCOORD3S` | entry 0xaa0960c7 | 18 | 3 | short | 16 | 1 | 2 | plain integer | `__glkonim_TexCoord3s` | Current texture coordinate of three signed shorts converted without scaling; the fourth component gets its default. | inferred |
| `HP_TEXCOORD4D` | entry 0xf8496007 | 146 | 0 | double | 16 | 0 | 4 | float | `__glkonim_TexCoord4d` | Current texture coordinate of four doubles narrowed to single precision; no component is defaulted. | inferred |
| `HP_TEXCOORD4F` | entry 0xd8496107 | 146 | 4 | 32-bit | 16 | 0 | 4 | float | `__glkonim_TexCoord4f` | Current texture coordinate of four floats taken as they are; no component is defaulted. | inferred |
| `HP_TEXCOORD4I` | entry 0xd8096107 | 18 | 4 | 32-bit | 16 | 0 | 4 | plain integer | `__glkonim_TexCoord4i` | Four signed integers after the token give the current texture coordinate s, t, r and q, converted without scaling and with no component defaulted. | inferred |
| `HP_TEXCOORD4S` | entry 0xb8096107 | 18 | 4 | short | 16 | 0 | 4 | plain integer | `__glkonim_TexCoord4s` | Four signed shorts give the current texture coordinate s, t, r and q; the first short shares the token word's upper 16 bits and the rest follow in the next words. | inferred |

| Token | Map word | Command | Count | Size | Record word | Defaults filled | Last-word bytes | Data | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `HP_VERTEX2D` | entry 0xfc674107 | 206 | 4 | double | 0 | 2 | 4 | float | `__glkonim_Vertex2d` | Two doubles give x and y; the vertex completes, enters the open primitive, and z and w are filled with defaults. | inferred |
| `HP_VERTEX2F` | entry 0xdc674087 | 206 | 2 | 32-bit | 0 | 2 | 4 | float | `__glkonim_Vertex2f` | Two single floats for x and y complete the vertex and push it into the open primitive, with z and w filled by defaults. | inferred |
| `HP_VERTEX2I` | entry 0xdc274087 | 78 | 2 | 32-bit | 0 | 2 | 4 | plain integer | `__glkonim_Vertex2i` | Two integers for x and y, converted without scaling, complete a vertex that enters the open primitive; z and w take default values. | inferred |
| `HP_VERTEX2S` | entry 0xbc274087 | 78 | 2 | short | 0 | 2 | 4 | plain integer | `__glkonim_Vertex2s` | Signed short x and y form a vertex that enters the open primitive, and the defaults fill z and w. | inferred |
| `HP_VERTEX3D` | entry 0xfa674187 | 206 | 6 | double | 0 | 1 | 4 | float | `__glkonim_Vertex3d` | Three doubles give x, y and z; the vertex enters the open primitive with w filled by its default. | inferred |
| `HP_VERTEX3F` | entry 0xda6740c7 | 206 | 3 | 32-bit | 0 | 1 | 4 | float | `__glkonim_Vertex3f` | Three single floats give x, y and z of a vertex that enters the open primitive, and w takes its default. | inferred |
| `HP_VERTEX3I` | entry 0xda2740c7 | 78 | 3 | 32-bit | 0 | 1 | 4 | plain integer | `__glkonim_Vertex3i` | Three integers for x, y and z, converted without scaling, enter the open primitive as a vertex with w defaulted. | inferred |
| `HP_VERTEX3S` | entry 0xaa2740c7 | 78 | 3 | short | 0 | 1 | 2 | plain integer | `__glkonim_Vertex3s` | Three signed shorts for x, y and z make a vertex in the open primitive; the fourth component w is defaulted. | inferred |
| `HP_VERTEX4D` | entry 0xf8674007 | 206 | 0 | double | 0 | 0 | 4 | float | `__glkonim_Vertex4d` | Four doubles supply x, y, z and w; the vertex completes and enters the open primitive with no default applied. | inferred |
| `HP_VERTEX4F` | entry 0xd8674107 | 206 | 4 | 32-bit | 0 | 0 | 4 | float | `__glkonim_Vertex4f` | Four single floats supply all of x, y, z and w for a vertex that enters the open primitive without defaults. | inferred |
| `HP_VERTEX4I` | entry 0xd8274107 | 78 | 4 | 32-bit | 0 | 0 | 4 | plain integer | `__glkonim_Vertex4i` | Four integers supply x, y, z and w, converted without scaling, and the vertex enters the open primitive undefaulted. | inferred |
| `HP_VERTEX4S` | entry 0xb8274107 | 78 | 4 | short | 0 | 0 | 4 | plain integer | `__glkonim_Vertex4s` | Four signed shorts supply x, y, z and w for a vertex that enters the open primitive, and nothing is defaulted. | inferred |
## Primitive begin tokens

A begin token runs a short stub in the distributor (one per primitive class). The stub loads the class register r48, the handler register r62 and the first vertex state into r49; the distributor tables are described in [ucode/ged.md](../ucode/ged.md#how-an-entry-is-chosen). All ten tokens carry one zero payload word, because the primitive is chosen by the token number.

| Token | Map word | Command | Entry number | Stub address | Class register | Engine handler | Effect | Grade |
|---|---|---|---|---|---|---|---|---|
| `HP_BEGIN_POINTS` | entry 0xd8c20053 | 388 | 4 | at 0x10e | 1 | `mgesi_Points` | Opens a point list; each later vertex becomes one point. | inferred |
| `HP_BEGIN_LINES` | entry 0xd8c68053 | 397 | 13 | at 0x379 | 2 | `mgesi_LineStrip` | Opens independent segments; vertices pair up into lines. | inferred |
| `HP_BEGIN_LINELOOP` | entry 0xd8c30053 | 390 | 6 | at 0x130 | 6 | `mgesi_LineStrip` | Opens a closed polyline; the last vertex joins back to the first. | inferred |
| `HP_BEGIN_LINESTRIP` | entry 0xd8c28053 | 389 | 5 | at 0x1a2 | 5 | `mgesi_LineStrip` | Opens an open polyline; each vertex extends the previous segment. | inferred |
| `HP_BEGIN_TRIANGLES` | entry 0xd8c38053 | 391 | 7 | at 0x34b | 4 | `mgesi_Triangles` | Opens separate triangles taken three vertices at a time. | inferred |
| `HP_BEGIN_TSTRIP` | entry 0xd8c40053 | 392 | 8 | at 0x040 | 9 | `mgesi_TriangleStrip` | Opens a triangle strip where each vertex adds a triangle. | inferred |
| `HP_BEGIN_TFAN` | entry 0xd8c48053 | 393 | 9 | at 0x2a3 | 10 | `mgesi_TfanPolyEnd` | Opens a triangle fan; the stub also selects fan mode through a second handler. | inferred |
| `HP_BEGIN_QUADS` | entry 0xd8c50053 | 394 | 10 | at 0x1e5 | 7 | `mgesi_Quads` | Opens separate quadrilaterals taken four vertices at a time. | inferred |
| `HP_BEGIN_QSTRIP` | entry 0xd8c58053 | 395 | 11 | at 0x21a | 8 | `mgesi_QuadStrip` | Opens a quad strip where each vertex pair adds a quad. | inferred |
| `HP_BEGIN_POLYGON` | entry 0xd8c60053 | 396 | 12 | at 0x2b3 | 10 | `mgesi_TfanPolyEnd` | Opens a polygon; it runs the fan handlers with the fan-mode register cleared where the fan sets it. | inferred |

## Matrix tokens

Command numbers 131-204 select a slot of the engines' 64-entry handler table. `arm_matrixmode` rebinds slots 3-12 for the projection and texture matrices, so the handler shown is the one that runs while the matrix mode is modelview. Payload words follow the library routine that sends the token.

| Token | Map word | Command | Count | Handler slot | Modelview handler | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|---|
| `HP_FRUSTUM` | entry 0x7842d301 | 133 | 12 | 5 | `mgeb_Frustum_Modelview` | `__glkonim_Frustum` | Builds a perspective matrix from six doubles (left, right, bottom, top, near, far) and multiplies it into the current matrix. | inferred |
| `HP_LOADIDENTITY` | entry 0x5841d041 | 131 | 1 | 3 | `mgeb_LoadIdentity_Modelview` | `__glkonim_LoadIdentity` | Replaces the current matrix with the identity; the one payload word is a zero filler. | inferred |
| `HP_LOADMATRIXF` | entry 0x58625401 | 196 | 16 | 4 | `mgeb_LoadMatrix_Modelview` | `__glkonim_LoadMatrixf` | Overwrites the current matrix with sixteen floats in column-major order. | inferred |
| `HP_LOADMATRIXD` | entry 0x78625001 | 196 | 0 | 4 | `mgeb_LoadMatrix_Modelview` | `__glkonim_LoadMatrixd` | Overwrites the current matrix with sixteen doubles, a map count of zero meaning thirty-two words, converted on the way in. | inferred |
| `HP_MULTMATRIXF` | entry 0x58635401 | 198 | 16 | 6 | `mgeb_MultMatrix_Modelview` | `__glkonim_MultMatrixf` | Multiplies the current matrix by sixteen floats. | inferred |
| `HP_MULTMATRIXD` | entry 0x78635001 | 198 | 0 | 6 | `mgeb_MultMatrix_Modelview` | `__glkonim_MultMatrixd` | Multiplies the current matrix by sixteen doubles, again thirty-two words long. | inferred |
| `HP_ORTHO` | entry 0x7843d301 | 135 | 12 | 7 | `mgeb_Ortho_Modelview` | `__glkonim_Ortho` | Builds an orthographic matrix from six doubles and multiplies it into the current matrix. | inferred |
| `HP_POPMATRIX` | entry 0x58045041 | 8 | 1 | 8 | `mgeb_PopMatrix_Modelview` | `__glkonim_PopMatrix` | Pops the matrix stack, bringing back the saved matrix; the payload word is a zero filler. | inferred |
| `HP_PUSHMATRIX` | entry 0x5804d041 | 9 | 1 | 9 | `mgeb_PushMatrix_Modelview` | `__glkonim_PushMatrix` | Pushes a copy of the current matrix onto the stack; the payload word is a zero filler. | inferred |
| `HP_ROTATED` | entry 0x78655201 | 202 | 8 | 10 | `mgeb_Rotate_Modelview` | `__glkonim_Rotated` | Rotates by an angle about an axis, all four values doubles, by building a rotation and multiplying. | inferred |
| `HP_ROTATEF` | entry 0x58655101 | 202 | 4 | 10 | `mgeb_Rotate_Modelview` | `__glkonim_Rotatef` | Rotates by an angle about an axis, four floats, with the same engine rotation routine as the double form. | inferred |
| `HP_SCALED` | entry 0x7865d181 | 203 | 6 | 11 | `mgeb_Scale_Modelview` | `__glkonim_Scaled` | Scales the matrix rows by three double factors. | inferred |
| `HP_SCALEF` | entry 0x5865d0c1 | 203 | 3 | 11 | `mgeb_Scale_Modelview` | `__glkonim_Scalef` | Scales the matrix rows by three float factors. | inferred |
| `HP_TRANSLATED` | entry 0x78665181 | 204 | 6 | 12 | `mgeb_Translate_Modelview` | `__glkonim_Translated` | Adds a translation of three doubles into the current matrix. | inferred |
| `HP_TRANSLATEF` | entry 0x586650c1 | 204 | 3 | 12 | `mgeb_Translate_Modelview` | `__glkonim_Translatef` | Adds a translation of three floats into the current matrix. | inferred |

## Evaluator coordinate tokens

All six evaluator tokens share the one map word 0x51e0006f: register form, command 448, chain bit set, one payload word that goes to distributor register 0x28f. The coordinates follow in a chained entry. The library sends only the float forms.

| Token | Map word | Command | Count | Dimension word | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|
| `HP_EVAL_COORD1D` | entry 0x51e0006f | 448 | 1 | 1 | none | Double-precision one-dimensional coordinate; same map word as the float form, which the library sends instead. | inferred |
| `HP_EVAL_COORD1F` | entry 0x51e0006f | 448 | 1 | 1 | `__glKonEvalCoord1DGe11` | One-dimensional evaluator coordinate: the count word 1 starts the chained float that follows. | inferred |
| `HP_EVAL_COORD2D` | entry 0x51e0006f | 448 | 1 | 2 | none | Double-precision two-dimensional coordinate; shares the map word of the float form and has no sender. | inferred |
| `HP_EVAL_COORD2F` | entry 0x51e0006f | 448 | 1 | 2 | `__glKonEvalCoord2DGe11` | Two-dimensional evaluator coordinate: the count word 2 starts the two chained floats that follow. | inferred |
| `HP_EVAL_POINT1` | entry 0x51e0006f | 448 | 1 | 1 | none | Grid point of a one-dimensional map; the library calls the coordinate routine for it rather than sending this number. | inferred |
| `HP_EVAL_POINT2` | entry 0x51e0006f | 448 | 1 | 2 | none | Grid point of a two-dimensional map; not sent, the host walks the grid with the coordinate routine instead. | inferred |

## Packed vertex tokens

Each packed-vertex token is a whole vertex taken from an interleaved array. All share command 206, the vertex command of `HP_VERTEX4F`, and differ in the count field and in which attribute words follow x, y and z. The library sends a setup token first and a clean-up token last around each run of them.

| Token | Map word | Command | Count | Words after z | Sender | Effect | Grade |
|---|---|---|---|---|---|---|---|
| `HP_PVERTEX_V3F` | entry 0xd86740c7 | 206 | 3 | 0 | `__glkonSendPackedVertexV3F` | Position only: a vertex of three floats. | inferred |
| `HP_PVERTEX_V3F_C4UB` | entry 0xd8674107 | 206 | 4 | 1 | `__glkonSendPackedVertexV3F_C4UB` | Position and a colour packed into one word of four unsigned bytes. | inferred |
| `HP_PVERTEX_V3F_N3S` | entry 0xd8674107 | 206 | 4 | 1 | `__glkonSendPackedVertexV3F_N3S` | Position and a normal packed into one word: the first two signed shorts, with bit 0 replaced by the sign bit of the third (`__glkonSendPackedVertexV3F_N3S` lines 701-703); the engine rebuilds the third from unit length. | inferred |
| `HP_PVERTEX_V3F_C4UB_N3S` | entry 0xd8674147 | 206 | 5 | 2 | `__glkonSendPackedVertexV3F_C4UB_N3S` | Position, packed colour word and packed normal word. | inferred |
| `HP_PVERTEX_V3F_T2F` | entry 0xd8674147 | 206 | 5 | 2 | `__glkonSendPackedVertexV3F_T2F` | Position and a texture coordinate of two floats. | inferred |
| `HP_PVERTEX_V3F_C4UB_T2F` | entry 0xd8674187 | 206 | 6 | 3 | `__glkonSendPackedVertexV3F_C4UB_T2F` | Position, packed colour word and two texture floats. | inferred |
| `HP_PVERTEX_V3F_N3S_T2F` | entry 0xd8674187 | 206 | 6 | 3 | `__glkonSendPackedVertexV3F_N3S_T2F` | Position, packed normal word and two texture floats. | inferred |
| `HP_PVERTEX_V3F_C4UB_N3S_T2F` | entry 0xd86741c7 | 206 | 7 | 4 | `__glkonSendPackedVertexV3F_C4UB_N3S_T2F` | Position, packed colour, packed normal and two texture floats, the richest float form. | inferred |
| `HP_PVERTEX_V3F_T2S` | entry 0xd8674107 | 206 | 4 | 1 | `__glkonSendPackedVertexV3F_T2S` | Position and a texture coordinate of two signed shorts sharing one word. | inferred |
| `HP_PVERTEX_V3F_C4UB_T2S` | entry 0xd8674147 | 206 | 5 | 2 | `__glkonSendPackedVertexV3F_C4UB_T2S` | Position, packed colour word and a word of two short texture coordinates. | inferred |
| `HP_PVERTEX_V3F_N3S_T2S` | entry 0xd8674147 | 206 | 5 | 2 | `__glkonSendPackedVertexV3F_N3S_T2S` | Position, packed normal word and a word of two short texture coordinates. | inferred |
| `HP_PVERTEX_V3F_C4UB_N3S_T2S` | entry 0xd8674187 | 206 | 6 | 3 | `__glkonSendPackedVertexV3F_C4UB_N3S_T2S` | Position, packed colour, packed normal and short texture pair, the richest short form. | inferred |

## X server drawing tokens

The X server module stores the first payload word of each token at the FIFO pointer plus 32 times the token number and the rest at offset 0, so the offset column is 32 x token. Map words are in the pass form; the engine handler is the slot of the 64-entry handler table that the command number selects.

| Token | Map word | Command | Count | Handler slot | Engine handler | FIFO offset | Effect | Grade |
|---|---|---|---|---|---|---|---|---|
| `HP_X_LOADGC` | entry 0x5859db41 | 179 | 13 | 51 | `mgebi_XLoadGC` | 0x2520 | Loads thirteen words of graphics-context state: colours, write masks, raster op and framebuffer addresses. | inferred |
| `HP_X_LOADPOS` | entry 0x585a5901 | 180 | 4 | 52 | `mgebi_XLoadPosition` | 0x2540 | Sets the drawable origin and size, four words, that later drawing is relative to. | inferred |
| `HP_X_LOADSCISSOR` | entry 0x585b4901 | 182 | 4 | 54 | `mgesi_XLoadScissor` | 0x25a0 | Sets the scissor box for glyph drawing from four words. | inferred |
| `HP_X_DATA1` | entry 0x58400041 | 128 | 1 | 0 | none identified | 0x2820 | Holds one word of leading items for the next X drawing command. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA2` | entry 0x58400081 | 128 | 2 | 0 | none identified | 0x2840 | Holds two words of leading items, one rectangle corner pair or two points. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA3` | entry 0x584000c1 | 128 | 3 | 0 | none identified | 0x2860 | Holds three words of leading items for the next X drawing command. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA4` | entry 0x58400101 | 128 | 4 | 0 | none identified | 0x2880 | Holds four words, two corner pairs or four points. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA5` | entry 0x58400141 | 128 | 5 | 0 | none identified | 0x28c0 | Holds five words of leading items for the next X drawing command. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA6` | entry 0x58400181 | 128 | 6 | 0 | none identified | 0x28e0 | Holds six words; both the point routines and the rectangle fills send this size. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA7` | entry 0x584001c1 | 128 | 7 | 0 | none identified | 0x2900 | Holds seven words of leading items for the next X drawing command. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA8` | entry 0x58400201 | 128 | 8 | 0 | none identified | 0x2920 | Holds eight words, four corner pairs, sent only by the rectangle fill routines. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA9` | entry 0x58400241 | 128 | 9 | 0 | none identified | 0x2940 | Holds nine words of leading items for the next X drawing command. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_DATA10` | entry 0x58400281 | 128 | 10 | 0 | none identified | 0x2960 | Holds ten words, five corner pairs, the largest preload and again rectangle-only. Which unit consumes the words is unknown for this effect: the handler bound at slot 0 reads only its first three words, so the holding unit and the role of the rest rest on the sender's remainder rule alone. | inferred |
| `HP_X_POINT` | entry 0x58554841 | 170 | 1 | 42 | `mgesi_XPoint` | 0x2980 | Draws one absolute point in the foreground colour, clipped to the clip list. | inferred |
| `HP_X_POINT6` | entry 0x58554981 | 170 | 6 | 42 | `mgesi_XPoint` | 0x29a0 | Draws six absolute points in the foreground colour. | inferred |
| `HP_X_POINT24` | entry 0x58554e01 | 170 | 24 | 42 | `mgesi_XPoint` | 0x29c0 | Draws twenty-four absolute points in the foreground colour, the longest point burst. | inferred |
| `HP_X_POINT_R` | entry 0x5855c841 | 171 | 1 | 43 | `mgesi_XPointRel` | 0x29e0 | Draws one point given relative to the previous point. | inferred |
| `HP_X_POINT6_R` | entry 0x5855c981 | 171 | 6 | 43 | `mgesi_XPointRel` | 0x2a00 | Draws six points, each relative to the one before. | inferred |
| `HP_X_POINT24_R` | entry 0x5855ce01 | 171 | 24 | 43 | `mgesi_XPointRel` | 0x2a20 | Draws twenty-four points, each relative to the one before. | inferred |
| `HP_X_RECT` | entry 0x58564881 | 172 | 2 | 44 | `mgesi_XRect` | 0x2a40 | Fills one rectangle given as origin then width and height, clipped. | inferred |
| `HP_X_RECT6` | entry 0x58564b01 | 172 | 12 | 44 | `mgesi_XRect` | 0x2a60 | Fills six rectangles of origin, width and height, twelve words in all. | inferred |
| `HP_X_BOX` | entry 0x5856c881 | 173 | 2 | 45 | `mgesi_XBox` | 0x2a80 | Fills one box given by two corners, clipped to the clip list. | inferred |
| `HP_X_BOX6` | entry 0x5856cb01 | 173 | 12 | 45 | `mgesi_XBox` | 0x2aa0 | Fills six boxes of two corners each, twelve words in all. | inferred |
| `HP_X_SPANS` | entry 0x585748c1 | 174 | 3 | 46 | `mgesi_XSpans` | 0x2ac0 | Fills one span: a count of one, a start point and a width. | inferred |
| `HP_X_SPANS2` | entry 0x58574941 | 174 | 5 | 46 | `mgesi_XSpans` | 0x2ae0 | Fills two spans after a count word of two. | inferred |
| `HP_X_SPANS6` | entry 0x58574b41 | 174 | 13 | 46 | `mgesi_XSpans` | 0x2b00 | Fills six spans after a count word of six. | inferred |
| `HP_X_SEGMENT` | entry 0x5857c881 | 175 | 2 | 47 | `mgesi_XSegment` | 0x2b20 | Draws one line segment from two points. | inferred |
| `HP_X_LINE` | entry 0x58584881 | 176 | 2 | 48 | `mgesi_XLine` | 0x2b60 | Draws a connected polyline of two points; consecutive commands share an end point. | inferred |
| `HP_X_LINE6` | entry 0x58584b01 | 176 | 12 | 48 | `mgesi_XLine` | 0x2b80 | Draws a polyline of seven points, six connected segments. | inferred |
| `HP_X_LINE_R` | entry 0x5858c881 | 177 | 2 | 49 | `mgesi_XLineRel` | 0x2ba0 | Draws a two-point polyline with the points given relative to the previous one. | inferred |
| `HP_X_LINE6_R` | entry 0x5858cb01 | 177 | 12 | 49 | `mgesi_XLineRel` | 0x2bc0 | Draws six connected segments, every point relative to the previous one. | inferred |
| `HP_X_BGPOINT` | entry 0x58594841 | 178 | 1 | 50 | `mgesi_XBgPoint` | 0x2be0 | Draws one point in the background colour, the odd dash of a double-dashed line. | inferred |
| `HP_X_BGPOINT6` | entry 0x58594981 | 178 | 6 | 50 | `mgesi_XBgPoint` | 0x2c00 | Draws six points in the background colour. | inferred |
| `HP_X_BGPOINT24` | entry 0x58594e01 | 178 | 24 | 50 | `mgesi_XBgPoint` | 0x2c20 | Draws twenty-four points in the background colour. | inferred |
## Other routed tokens

Routed tokens that fit none of the families above. The map word of each is decoded in the same way; the handler slot is the engine handler table entry that the command number selects.

| Token | Map word | Command | Count | Handler slot | Handler bound | Effect | Grade |
|---|---|---|---|---|---|---|---|
| `HP_GET_LIGHT_ATTRIBS` | entry 0x58514841 | 162 | 1 | 34 | `mgesi_PushAttrLights` | Saves the current light attributes on the engine-side attribute stack. No host routine sends it: the ARM injects the same command, with descriptor 0x58514800, while it handles a push-attributes token. | inferred |
| `HP_GEPASSCMD` | entry 0x58474041 | 142 | 1 | 14 | `mges_NullCommand` | Consumes one command word and does nothing with it, because the slot is bound to the null-command engine routine; nothing in the shipped software sends it. | inferred |
| `HP_WRAM2CRAM` | entry 0x5846d441 | 141 | 17 | 13 | none | Takes seventeen words through the pass form into a slot that start-up binds to no engine routine, so the words are consumed without a handler running; nothing in the shipped software sends it. | inferred |
| `HP_BIND_2D_MIPMAP_TEXTURE` | entry 0x58505d81 | 160 | 22 | 32 | `mgebi_Bind2dMipmapTexture` | Loads a 2D mip-map texture description into the engine texture state: six words read from fixed offsets of the texture object, then sixteen words copied from the array that the object points to at offset 252; the sender first sends a linear-bind or bind token with five words. | inferred |
| `HP_SETCOLORNORMAL` | entry 0x52600067 | 192 | 1 | 0 | `mgesi_BshRegisterWrite` | Writes its one payload word as a mode value into distributor register 0x293; the library sends it only for the igloo-interface call with selector 0x81a1, after token 446. | inferred |


