GDPC                                                                            
   D   res://.import/bowling_ball.png-0fe48f78a8537b41cee7fd03e5ee14fe.stexp      �      :�aT3�}pY>�9��^<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      o���Ӄ����}s�?-   res://ball.tscn        �      �3�K�c��VGѪ.�   res://ball_factory.gd.remap 0/      '       ��q����k��}g���   res://ball_factory.gdc  �      �      �nS�:߰�x�3�BS�    res://bowling_ball.png.import          �      ��V�:7��qm�F��2   res://icon.png  `/      �      =�p;f0Y��-����n   res://icon.png.import   P       �      ��fe��6�B��^ U�   res://project.binary8      >      ������L.@@#��   res://scene_instancing.tscn  #      &      �8��a�]��l�?    [gd_scene load_steps=4 format=2]

[ext_resource path="res://bowling_ball.png" type="Texture" id=1]

[sub_resource type="PhysicsMaterial" id=1]
bounce = 0.4

[sub_resource type="CircleShape2D" id=2]
radius = 30.0

[node name="Ball" type="RigidBody2D"]
physics_material_override = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )
         GDSC            [      ���ӄ�   ����������Ӷ   ���������Ӷ�   ���������������¶���   ����¶��   ������ٶ   ��������������������ض��   ���������Ҷ�   �����������ζ���   �����������   ����ض��   ������������������������ض��   ��������������������ض��   �������Ӷ���   ��������������ض   ��������Ҷ��      res://ball.tscn                                            !      -   	   5   
   <      =      >      E      N      T      Y      3YY8P�  Q;�  ?PQYY0�  P�  QV�  &�  T�  PQV�  .�  &�  4�  �  T�  PQV�  &�  T�  �	  V�  �
  P�  PQQYYY0�
  P�  QV�  ;�  �  T�  PQ�  �  T�  �  �  �  P�  QY`  GDST@   @            n  WEBPRIFFb  WEBPVP8LV  /?���Ta�����`	��g� L��?cG�#6;x�m۴m��E�\[��˶׶����m{���1�k
����~m�Vm[��\�\Ә�4K�����G5��4Ә��6��欞l�vm;��>����O��:HN*!I���s@~ÿ�mm��f�q~Ķ��m�3۶m��ٶFn���ƶq;p$�i6�&���# ���һ� %���PZC[h��:@	�
g�0�߹���RW@�|�_� �>��#p~���A����KI))!R:�&�]�&�z-t������j�w~�K����T���5�YR�NA%���S�]˽�}��s9w^r�d���B�QU���*�� ���`����c���*k����=�.O,��{�;��/���.��C�����5Ͼ%'�
'U��~(۶cS�w ���V'�.�(�O���;)B(�A�KN�P@J���̕g���\��I �a�g������X%��ِ�QCc	DB  ˼�r��kN�)$��1���]�D8����{���eԂi�" E ��$   e�<|e#�`��{���� t[ȳN1�8���5D�BhD�
 @`� � @���v�J�I�4�2{5�{ y�lwrH�+'�y�( ������C1���Y�J
���{`W��\!��Y�B������� �����V� �%�R� x&9�Wܹ���`&����w�hR��I �nNހ�۱M0DrMN.C(UDKE�(P�ҟW P��@� ���I" 0�try�Ʌ��*� Jw Q�. Q  	L�_�es$`�"�������#b&��RL�`�*,�HII�)�T�S�
>��Q�X��t��%RM[�C
`�z��w�?Y@���wӀ����u�m���# 
f�ڍ�4�&� �D�Db&��_�+�����9, rulN��n��]�-����0�Fh��Z�зtvQ";�E��w�;�K�X����ە�T:�ҙID�r�!�`�0vZC�(�! @�QĈNE��'���^���>��Й9�񕡓j9��ұ�ܐ�K
|g��`��Ø�n�+����i L��~�?�!6�:y�onzJ���p﨑R�э�$�nV��X`9� ��*#Op�n�� 1,_�ҙ���(���ݼ�W ���G�z0��wJ�ݽ�5  �@,E!ڠM�C 0�현�!K)��Y� ���;����T��<;zނ�[�P���	 ����ˋQE��Uz��1�A �П�=�8���>;�RK^(Β�����M �ȧ�e
, � �KZ L�
�Q���N�Ķ?��b�7|קj�D�{�F�������J ���t����(	#$)CQ��F(=Vg�U��-8����C��>�U�!�{��E�"����$�ԃ&�Q��-�������  ��^�%��O�:�x�_}���  �$ �V罧�s	���;�b���FT�k]�Qz�,�-H4$b(����}��y�o��
h�@��q�B[PP ���;�K��6.P�ᘘ��t� 3�/�q���3�]�y �����-�9h":Bb��ԥM��_ ����ȋ~��S
E�u����������D4�"%�nJ�a�۾�!Q� ��t��� 0���C�I�sfI݂���(�C���BLS�t��wR:�D;)�� �3}��I0N���L�� 4�(	 �Ĳ�[�ꔺ�#���bO��S�d �\�y�FI@!�\"rb�]E� LÉo�!t����㽭�%���۽�� ㊼�D)�Vbxz�܎g ˺��\�+�  �6 ���JD�������M��+  �f+1<=O���Α�����@ $#d`�� D
#
���`��]O� Q � ����C��3@Y�)�j�퉰�FD�"BTD&��DVD*"BD�]�p��)��²R�v�p�> KWb4  FeD��BQ2""����FH���,�����\��|�,=LF�F !�"� � ���T	DD(� �?|S@� �a9uN��|\� � #�۔������(BD��4%!j��D�;��� @YN]�R0å=��   `<����P 
�f(���&h� �8�d ����b�M���
D�H��*��-�F�MD�C8$�@9B�e��AIO%R.݇ �%�BE���Җ(J��!r�8Jw�5x%�2XXj�:�� �p�� `D�L|��T� ���2bp鰝��B:�H�0G�Y)RJY�1�, A�����U Ѱ�6����a�@x��c&'�I�d)�9������n�"�
�p�ۈ�2@��H��� ���ΰ��C��cĦ��Q��m�ҩi.���U�  4�� ��l�!g�'1�������3$ �f��-F	4H�SUƹ�MI=�  p @tx��*93�� ��a 0`�1 FDD��-`A[�r�# "�8�����hea8$h�X�g)M)����  �C#v>�(J��&V����8����`\(��}�(�!8�\�J)Q� �V
�����>E�6����ǿ�K�z����r�2
x~��e ��Md�P0,%ʡ�4k��aX02n3 PD��(���1<|v�������@Q�y瓒%K'��`-���,áĀbJ�Ǯ����a`�Q%����*AF�������'���.��D��!�L��� �f�R�KQQMYJ3�AJ$f���<�6�/,��="l��O��/=-�=�C�����W)���\��/�>  �@��:3����)���p�u�y�+O����Α��|���~3�X~������Ƈ���9��,�o	^���g?=�kƵr�D���Bv��g��@Yh&�r���[��RJ�r(g�'��Ꮇ��;���r	c���շO9I'�%��z��������\#�Z9G��)�ẑ������5 P
�N������(�4�L�`J)穔r�Q��<,��r���{rN
�C�~�P�ND0�t��t�R]S��K���� (� �*�o|��J1`�J�0�D��L:9�$%e�U.����o��)'#՝��zeV؝�֕�O �^�p��Q�
e�Oy��>μY�̬���$8I'�(��3�;����K��	�0v�E�V2a�t�v� �ˋϿ'\g�����0u\�������y���o��c.<e���l�^=��_��=�|�e�@:A����$K���h�W�$��l� PJ�bk�~�����'N�R "�;@q��܀E��)�,�bٴڻ	~��m@;���  ����!G-;�U��("�,�C 
�����%l��WV HX`aaG) E\�Djg�lc. �c0 ~�����K`_���`s<�G� ��0<���Dv� �*J���| &,~  �I�:���p�$@�g�����+ @B���%8O�n��^ݿ]`0 � p���^���v���Ƃ��[�>��p�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bowling_ball.png-0fe48f78a8537b41cee7fd03e5ee14fe.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://bowling_ball.png"
dest_files=[ "res://.import/bowling_ball.png-0fe48f78a8537b41cee7fd03e5ee14fe.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   @            h  WEBPRIFF\  WEBPVP8LP  /?� �9 ۶ �%e�����ȫ^?	Xn$۪�9��'f�d)	���\�_��H�]+;{��
�H�	��-���s�?.��MW����Y;�����&�|�	�/��$JVI�P�]�őIX�SJ8�J��2�@@�.��d   B 	 	4(� ��6��ͤ���6ǿ�j�LKFe��zd -%RE�+͞�8@�V�ݡRƢ4%��˺,�?�g���|0��{C����u��w�al��[X��1Л-�e��FҶ�L�᯦���e��CA����2iH8׻�5�פ���
��_]����#]~���=zlM A
C����\�M'��bR(��%Jv�����G��-U`M�R��*4lcR
cS��M%a�'U#!A�I���c`V~_n|�>�<�b�ܛ��z����C��26���m�״��7��] �$	V����V~�����t�z;w��.�	P;��u^D�߁�H�䁪�=�O������˦)�;Z^�H���p4ҽW���?����/��^���4=��<�=o0䰚i<�i_u$�4c����`Ϙ���l�a���o>Ø�43�P�˧<�ӵ�=r�s�H;c&L�C_����Y�:�b�B���g��y`����t:Y3i�m�9#�a<M�AH,Xg����c�zxߐ�N�B�p��G����DH
�؄2�ύ��N��m�24����?��^{�U=U��a��#��%������I�����&m��GU)S�0����G3��%"�I_P�3fҨC!X^�������@��L��R8JJ+�3ߊa4 �YE�(��)����z���ȟ�V$��!<��%vf�,C8�ha�z�2�-ҳ�O>�F�v/�Q$��b�߷3"��ٸa(+T������������[�~�g����E"�W0k&��%W�.��_��  s��$uR ��`-�)�"O���}�)��4rU��Y tD�y�{̟3s��"�
��-/��SU1I�"�QDM������/:��.�`��<�J!�@P*ػr��-R(F��Xz���k�mS"<.7)�  �ђ� ��`��Yj��ZA�*�����kV�ݨ��N�&t��]RR��tW��Ys�6���O���QKM!(�3�;@U�ŋ6m�	��L�h���K��?������Ϗ˖.���gq�o]�B!Ol&���ڑ���Jٞ��F	=
�f�h�n��~��3N�N*�?��E�M��?�d-��5��`O����/����x�b���Z��a�\�R�NIo��g�S�n�o�Xcm��?�&���aB�)+���6�F�°L�*���oȘ�BPn"(���9�q����XQ�H��l2���C��2�D������Z���Xc�
��˩T:�,Q��@�$a4��"�V��l9�p�Z�H��&��`��M��|h� 1Ĩ����)���	�Yre��$ma��ʡ#|~_�5����潂���3?�l,Øi�0�	j�rܝÆ����b��2/�=O�?�y_0&�4��G��L�& �w\�8�f*c�;�Y�q��o�%�LOq}���
vk��$I�/p��+{X!*�G.q��݌�o7�������R>��icY�LQ�rq���v�q{��'Ξ�����ƛ7o�/���ZH�Ģ��g�c��+J�t
��e�\�Ɲ+G��?x�����ݻ����g�}��hp�,��`e�#Q�6;<C����PHp���rݍ��۵�\O���r:FSFL����(��f����R	�Gk�~u�/?r�詫�o]�~�ⅳ���v{��.���iܹ{�n]»���{�������{�����W08            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [gd_scene load_steps=13 format=2]

[ext_resource path="res://ball_factory.gd" type="Script" id=1]
[ext_resource path="res://ball.tscn" type="PackedScene" id=2]

[sub_resource type="PhysicsMaterial" id=1]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=2]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=3]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=4]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=5]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=6]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=7]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=8]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=9]
bounce = 0.4

[sub_resource type="PhysicsMaterial" id=10]
bounce = 0.4

[node name="SceneInstancing" type="Node2D"]

[node name="BallFactory" type="Node2D" parent="."]
script = ExtResource( 1 )

[node name="Static" type="StaticBody2D" parent="."]

[node name="Collision" type="CollisionPolygon2D" parent="Static"]
polygon = PoolVector2Array( 8.68994, 22.1976, 50.4445, 556.656, 292.621, 501.54, 335.36, 550.855, 510.039, 563.135, 542.137, 526.368, 567.463, 515.822, 612.463, 506.822, 667.291, 495.079, 747.553, 553.575, 793.806, 6.70509, 802.465, 601.097, 4.43558, 596.186 )

[node name="Polygon2D" type="Polygon2D" parent="Static"]
color = Color( 1, 0.266667, 0.419608, 1 )
polygon = PoolVector2Array( 8.68994, 22.1976, 50.4445, 556.656, 292.621, 501.54, 335.36, 550.855, 510.039, 563.135, 542.137, 526.368, 567.463, 515.822, 612.463, 506.822, 667.291, 495.079, 747.553, 553.575, 793.806, 6.70509, 802.465, 601.097, 4.43558, 596.186 )

[node name="Ball1" parent="." instance=ExtResource( 2 )]
position = Vector2( 223.823, 161.773 )
physics_material_override = SubResource( 1 )

[node name="Ball2" parent="." instance=ExtResource( 2 )]
position = Vector2( 388.078, 213.215 )
physics_material_override = SubResource( 2 )

[node name="Ball3" parent="." instance=ExtResource( 2 )]
position = Vector2( 439.52, 104.013 )
physics_material_override = SubResource( 3 )

[node name="Ball4" parent="." instance=ExtResource( 2 )]
position = Vector2( 235.555, 336.858 )
physics_material_override = SubResource( 4 )

[node name="Ball5" parent="." instance=ExtResource( 2 )]
position = Vector2( 509.555, 362.858 )
physics_material_override = SubResource( 5 )

[node name="Ball6" parent="." instance=ExtResource( 2 )]
position = Vector2( 635.555, 147.858 )
physics_material_override = SubResource( 6 )

[node name="Ball7" parent="." instance=ExtResource( 2 )]
position = Vector2( 631.872, 325.88 )
physics_material_override = SubResource( 7 )

[node name="Ball8" parent="." instance=ExtResource( 2 )]
position = Vector2( 529.97, 205.561 )
physics_material_override = SubResource( 8 )

[node name="Ball9" parent="." instance=ExtResource( 2 )]
position = Vector2( 101.489, 167.502 )
physics_material_override = SubResource( 9 )

[node name="Ball10" parent="." instance=ExtResource( 2 )]
position = Vector2( 143.756, 295.139 )
physics_material_override = SubResource( 10 )

[node name="Camera2D" type="Camera2D" parent="."]
offset = Vector2( 400, 300 )
current = true
          [remap]

path="res://ball_factory.gdc"
         �PNG

   IHDR   @   @   ����   	pHYs     ��  �PLTELLLHJOJKMEHP:s2�9�6�7mAFPNMJLKKEGMOMI6u
U�f�i�
g�
d�
_�X�F�';i9�
@�	D�>�6A^8BYB�
p�k�
a�
]�W�
O�7�;DY,=d	9�Z�^�b�7z=EVI�_�S�V\�[�%a�
L�
6�BGS
P�
T�a�m�MKIs�A,fS�S�Ky�5}8q
>�
J�
M�j�n�>�HJK.=^a�
\�I�U�"V�1@`H�(a
Y�h��<�H�D�G�
O�E�D�4�2�
9�M�
@�=z_��H�1@c
3�
=�D�9v
Q�Zy�D�1�1�@�"M�Y�Su�9�A�+T�9�Ae�Gi�2w;�7^�&_Dg�#:n2}
0�)Q�@�2V�3>[<�:�0S�2Z�6Z�.X�'R�"Q�C�Km�4�"Q�&:e?� a�At�c��Ao�A�
1|
/�Oq�6l�W�L�m��'K�"G�:f�6f�R�Gt��bb7s�oobPO=�#[�ooGA|�cqU�3o�poL��qq�il\��ch�oo5=~�qoGC}A�yOh�^]|[[XPPQOODHH�^pVDy;��Po�ss�tt�jj�kk�]](:ygIw�oo�^t{Ov@@x�Ur�gr�mn�ddRIh�Vv1C��("�  �IDATx���3�C�y�ms7v��4Q��u�B}� �Ͱ��Q�dBᎬj�aZ����s��0����J�,�u�(��nZx���j�L����M�l:�/��P�֛��Q����G��O핅W[Ń;�X��d2��D�i�4)R�~�������������;	����'gYd���ϙu�`ϣ��tY���Y"T�7L�2=��r�#b2빨�Y�ܼ|�����0K��Ą�<c�Ԣ���b��@i�|�T���8]JZ�gk)+נY������ҘZ0pa
S�c�Ie�9j�ԗ�tYIqyE�� ��*��c�=g�\YJ8'@I�y�ИiDR2o~�g���j$�I�W������-M��$�f"q��.r}v1����-��NhA^8�!7$��g`"�^e��bk��\����b7z-de�dH&ǿ���P��Hj�m����!f�%��
/ruv��,(���q��h� 02�{��?e�����_Y�������@� <<<RB� X����|�� !�#���t ��1�2wr���G'/���Pq0@��)_2 @��^�#K�,[��je,\��VB�ۂ�:���W�l���k�7б�(�����Ҟ�:�1��$	�46.Y-h��WS��6nڼ�n����� l��B}���K�ء\R��&���m�ظi���Ưԛwn��V����ծ��CC�G��/ѷ;{j�١��Y�
Ճ����?C��C���bc[u_AJGz|Oq������& �{ }�۶^��P:"�*�F��QҲ��R��vw��0;2o�͌}�|ɒ���|����5��2�v˹bO��ed��+r'N�< �qU�VЇ؇H$���)o	^�w�_Eծu���Sjg�g8��	��0/�~���ةL4��A��YYo���ع�7�z��J��7��Q�XC��m�T�U*3n�i�m�0������f��R+G�\�3'{ ��'O�һvBI�n�>�l��51p�D�v�SO�rL�����1:Rx�mA��]� E�b.a�1$9,��S	�U�N��k�[�c��#en@��
�VS(*Vr����7
Μи�;�p��)���n����� ��o"LІ�0�5fs\�98~>	�.?{�/�A��{W4?|-�vEs��b"k��q�^<�.�l�0�p"9wv��\��U�U�T����f_8}J��(T��^�� ���")�I�k�o�<r���;w��#8iVFY�JV�V��$pI�a��cZL.����{��9��wQ��� ��Ç��?~����#G�i�j+�j*�̣r���c�x�
1��� ֋�_��~���r5��:���5��c�^ IDL�����t���y{����O�_����Ju:�����3ǿ��w�ʕKc�K����x�ӧO�>B���Ld?Y���_ 0�=	y    IEND�B`�    ECFG      application/config/name          Scene Instancing Demo      application/config/description`      V   A demo showing how to use scene instancing to
make many duplicates of the same object.     application/run/main_scene$         res://scene_instancing.tscn    application/config/icon         res://icon.png     display/window/size/width            display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand     gdnative/singletons             physics/2d/default_gravity      ,  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ���>���>���>  �?  