GDPC                                                                            
   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`      �	      ?K�7g=~�x�Ny��D   res://.import/white-circle.png-fd9ec96f5f813bd0d459d50130c980de.stex�!      X      m8	�M2z�E�����   res://Circle.tscn   �            �6a���Z!�x��2�   res://CircleArea.vs       "      y0(8I�~;��j   res://Main.tscn @
      !      �A��W;�є�   res://Main.vs   p      �	      Za�����t}�X�N�|   res://icon.png   ,      �	      s{No��.�Do���Z   res://icon.png.import   0      �      ��fe��6�B��^ U�   res://project.binary�5      m      nF�
�����]~���    res://white-circle.png.import   @)      �      �
�!����>,�=tY            [gd_scene load_steps=5 format=2]

[ext_resource path="res://white-circle.png" type="Texture" id=1]
[ext_resource path="res://CircleArea.vs" type="Script" id=2]

[sub_resource type="CanvasItemMaterial" id=1]
blend_mode = 1

[sub_resource type="CircleShape2D" id=2]
radius = 128.0

[node name="Sprite" type="Sprite"]
material = SubResource( 1 )
texture = ExtResource( 1 )

[node name="Area2D" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 2 )
    RSCC      #  �  ,   (�/�` �& �.�Cs� +  � (��
�( (P��p!闐�DI�M�2$��]C���<�{�	 k1�������&R�w � � �A���Ѻ1	>�\��8�����9��n�[�RE��	�z�W�p�E����P�ͥ���=/��'��V��[��\�mF��g�ʹ�f�y2����R��K-���'xo�����#��T�1O�H�V_�R>��3��� �Y�T�d��������ED�,:�Ɇl�����tғM�SPjܚ<�+,a��uQ�\�A"�8�7��p|BH�K�0x��q� *w �L��b�s]^��>g�c��8��ˢ|�Ic�yG2��7�ÀI�/��z@�h��d�NtZM�b��O�(���V�]_��_�\G�/_�����L�H��z�2���9�l�8�Ӳ��ֈZ�k;�Œ�N��b-q��J�<O�5k)�={�k[I�>	g��5���$��l\��T~�xyyyMxr �	��=/�I	�y�{0�NY��I����h<
�I�C��!�v���(���X��g�r򍦇f�Y��dl�,�̋_4S����hï Ǎ��_JZ�u�J��E˲ċ��D��u��k{M�A�qQ24��@@ q (� C����F)d�)� H@@B� T�=�Յ���IeQ�I{���C1�J�����tJ�s��WQ0�P�a�B��c����C!��"g��Z���9�Q~�g�=)?	㜸��S~��H ݈]�X�PȔ�<�3V����<�(����ì!�NM�;�pMA��{o^8�-O�,0����EF��#d�k
��P`��l{c\�Y!��h����^���9���+e�.��D/ruE��1O���7�8~��>$��)�q?7�C7�
�*���3*j��Ay<�;*(��X^����Q�
i��y���wz�xK��|��kP4����  ��zzc���*�'˪�(��-U�%���=9͈�Arޓ�h�$(h7W��,��is*3�����c�k9�7g�P�E���j}Y�T�c,����Am��������뽗��W�4�"0�s#l��{������<�4J�4�Z��
�Yܝs�\����^Sb�_�h�yVN`@8���c�{��\6���G���J���~�u1��a�hx�Z�"~A�C-r��r�n�bu�7�b�����3���(�/� #          	   vs_unify       RSRCRSCC              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Main.vs" type="Script" id=1]

[node name="Main" type="Node2D"]
script = ExtResource( 1 )

[node name="Timer" type="Timer" parent="."]
autostart = true

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
               RSCC      �'  �    )  (�/�` �# F�D�& <� � HT ) �"�F��!{3ʾ���t`�\8��@�jfS�7P�u��=?��ijm
h u | ��\N���sl��?glf��i�V�g��j�6�$������ o���Zr�����x�-n���I�:n�b��9g+�%��f��oFǏn�2�O��zk�>UܭB��.�O!q?�Ȏ����M^�`q���WRE�O�Q��H$�_t�j�8>
S$� �5oa~η{�*磳�=XwF�N�`�kØ�7MY�Tk��=��q[,�\��On+���M;�;�b��?ucIH����ƣj�5��2
պ�uu1�K<1n*��LaR���y�^�[nW	��<��mr�Q�`���9Y��I�D�* �	�M6�q���WL\��SDb~r�(?������1��ɣ�WF\�C�A4���\�+(�+���
�����eD2`�(��#�x.@.%!'�����F:$���9��My����Z��b���]�+p�����*�2/��:�3�kf}��.0��p�|L�tk����+�g0k���-152�$����(栃=�)E��R�C�d�H �$%%I�t<�&��@*�)OE��׽�!�����G`h� �ɮ��U7�{5,u��}��Xk�Lݨd%�[c̛P�滕� �-}�@��E�E�D�̹1�mo�z&�]w��KAvnM�qq4�s���3I� wl��<�X��K�R�}��aXE�=�4;��8�W�Do�Wo*"��ȉs����9��6De�/����!ʣ4pm��Ψkt����l5w<M5L3�5GH�N'��[�A�s�Gc��Q�F�'�/OR��ũܬY,Uy�9��
1 �t���a�ݠy���$�Ѡ���ֺg�c�T�5y��$=�p:3c	�q�P���$��N���\�c��_> ~��L�4���5��4M�3M���3p=O渭�*�<M��}��.s��,��e-+��%��\�����UW�є�̀�_Jo��䲨�~�ս��H)͕�$�^ts:��x �w��W�;=���>�Ci�ӏ�c���I@�FbRj<�f���qyЧ��]�i�/c\�T���4B}52J�
Ϳb�k�|��buс��s(�/�` m �S5@m���8��(�b���H��AZB�nK#nw��˦�3�m2���G��FR? E J �4ZF��I�0Fn���x���tia���@g��I�#TJ����S�e/����������:=�q[�-�l��RV�#·�^���s���a ���#=����v*I��ߠ��`��m��z��&���rX��*/�Ii�^�d�$0p�ֲc�h̰.*m���5�
��|$���
�8&�_aqo{�Z5.��<8��Icxk�|(��T�V��VP�)���j��rn(�Ya0�8��uK��t�-�娥�-��5M����E�$%��pp"�`�ʒ2�@D��H I$""��i�&��h�9��4�8�;�`�q�H)���Ǐ����B��?�S	�H ��w��j��Qݙ_vsD����e0�f��jy�;(��Cqr��q���#��q;K��@�p�1��Atٷ��!۔b{օ%�b�rU�vn���d, DR9%=� �܏$�Aq��l�[�D���;�5�Vg�ѷ![Fp�bPTܾ�5.B)�a�����Ml�|%#F��Κ����,m�� Ҩ�M	��
���b�k���K[]��voe@��X�1.��^CT@x��}�|�9i4F���lr���������m�$��P!'U�̒����
� 8_@�k��2c�m~�m7 �PbE81@q$A���!�bh�[�@�NR���6�"�Y�{��'d-��(�/�`�� �
 �D  HC          E  4@!E  �0E	�	@
��D�E�'E  ��6�@&E  �T%D D 44Cc!\D'a(z)�1*r,�@-�2E  D . �D!/D"   sequence_connections		dataP .    	 ')*, ,()-,namef_312843592un_id����croll��;E ���node is_tool_scriptvs_unify   RSRC������IR��@i���+�	1R��r���ś��v�����}D�ɚ�y��pa���JS����Ԗy�%l��Hdd���!}"��r@�AJ �d8?,�k����A>WD'�lgڰ��O�,�u7��
X�PQ�/H֣������V�#Ly�p�2�gp�o��r����ðp�ȪY�yL�[�.�PU>բ�����ݍ�!��V��Q�JV�A�eu�{���������RSCC            GDST@   @            �	  WEBPRIFF�	  WEBPVP8L�	  /?� �\`!����@�o9B ��@ 	c�Q���۶��m����Rե��˶m۶m۶m۶m۶���t)�r�TR�nʒm���6�\غ�m�"�m�5|�m۶mۼ�mm�9%j�I��EDf�ضm�|m[;cgck۶m۶�rMee��FR$��2���#�T �[��k��� }�=���� ����^}��q�ɴ0.(}]���| ��Gc�}8ns�������\(g\!d��L�a�>�� @���U$�P�o6�'�b�ʀ`� �!�Ϡ2��1��>�%��!7}1��1V�{a�r���	�P"��)F|V3�	8���� 0�b�(��$s$J�R���=u��7P��t@F�־j�g���#���n;���A1��EW���3�?���!50�fQ�mH.B���=u糍���4{7�)
Bk���Aѐ�Q�;����v-����:0%����{_<�����a�{^|�K?�$��آ�XB�;�v���v��>o�W�P��ED���ǿ���~�O�1��G�$&B�rh��eJ��ؿ��wN���&x�E.�& ��������6��E����W��O�m"#u������I��$��Au;W:����A����g�@��">b�� ���^Q1�~����z����]2��弣ߞw�{M�u�MWַ�� ��`L��T��Z>��Q��2��[�ʄ/"> ��%H�U.Җ���-3h�a��1��Fe[2!u�9�#s}洟���US��RM)��mU}d���r�����0�|
ɿ��yd�~g�}����c���[/o;�W�hj�#��k"��~���F̳f�K��g�5��4xQ<���w�gh�ŗ t�ŝU�5+#�奾���̃/JrXQ��]���<N��kVA=P\����n&PX�Ԯ,���Dj�g�8��$C���.��#D�p̾au�
�u�������"^3i@Ʃ����y�����3~0���!���n��M��;]w���������� `R��s�E�n�N��A���P�,��W��ݿL�c���$n�#� ����e�� '0��������1 c�6&�qt�)�C�ӕ���K�j�f�ĚG��L=�&�;ᷘw@FT �%M��C�5#3 $ێ

�Y)D 
p��s���}���0eI���p����/�A��D`^ �n�g� ��0^�v�)6�f������?���
 J3�4r8ȉP�@�Tg� ��/2���i��x��/���ү[�K�[ >(9`�r�J ��� f�],x�K7>{�5_=q�Oa�|����jkA  .���`*vq���1��s�?�-�+�w�Z� $Y+���8�!�[����]q��-���$V�_�_l����o�P"W˕����K{���Y�#���P�ןZ��p��GZ���\��e��O�R�<�/{ӓ�  ̠���',&�o���q����'֗ �]�>P  $��֣��/�������J�L��tcd�M���O?q?;�B���]���em�o�f5�����O���w�B�F����?8�����#I�L�K�C�L�CѲ��_�~B��X�m���D�&Cn�ߵ'��Š�O ��8_�2}v�	 ��-i��5�	��e�,}�oĖ�~��l����k����S�����1?}��LcϚT7fֱ�EP H�Ĥ�G=��2T�/�Y��5k^_X*+��g�md���.<��)�e�?�>���?I0d��]g��L[����|0�S���%}���6@5*n��J�-o+���KI�,<�M*_��-�����^���ƒ�֛���  �$��b3�PAB\k��L�u{�m���7A��Ă���?�8��ç�&Z?# pd  �uH�e��-�A �Rz��&˶9=~ug�E , ���9����l����D�"�}��4H; �H:����͂��	���V#	 ��U(���?�ޞ��OlJ,3Ev C�g����_K  4$J�P6l��� ��`�G��&�(S,d{�O�y�sL 4�ӷ;V�X�r:�.�r;���$�[I�M�h�95����|ʪ�PЖ�e��A_	@�Er���f�c� =�ýˢB����4�R�$J[`a�n6+��[Q�j�`n�H�M���}�?@� ѫ����+���ћ`lT�O�c��ߤ�"]��-�/���Ы��Y;��q�+��u,�6�觎W�����ľ��� dT���/����Zz'�~����"�*��� O�J�,��5-��r!Ù@��S%�V!@���=̴[�P���� z\PȨ�`$����12�qg����)l�[σ@o!������z�D��^Be=�����&��d@o�@�#�}i�      [remap]

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
              GDST               <  WEBPRIFF0  WEBPVP8L#  /��?/��m#��Iߏ[���mÆ�tO�۶rJ��>��"  @p�=��Cd\�(����W��K˾���`�u�Oi�_A�( ���/j#}��H���TIWr�����6JRwwoC�I�wk�F*����H7��e@3���O~������Qi�s���c��{g��g��{ow6�~�.�juTnu�=�?�sm�tX�H���5����q��$Ҿ90d��|�&w��=#l�ѽ�6I�h��ǂ��؜!]魗B,�Х�t�J�������,EJ�i�w�P��Ԯ[,�[]�2�䄟M�j��(E��i�V�ȇZ�aS�Ԫr���aӽ[�ʃ��6���r�$�i�������ov�A6��A��)u/X_�)���;K���:gXg:UZr����l,k,��5Sɺ�z1�D�󲔾��,lGYZ��L���ؑL��I���/Eg�f�o�-�,K��$����k�}���������]&�r?K��B@�Ku�Y8�Y�Wf=K�z�lf)�$�,������%���!Tj2�U
`���޿�p�&X�',�K��LC��� zlRz�^�8č�)�P�$��0zsab �lF8�P3@�Y���)4��u��~�s@��zt��D:R�1��U�t2��u�;��L�N�?��>�F]؟#��==�ghw�`A�7�����=��"�wU����\W�5�uB,#�ZQ�W$@���-5~�ruܔ1�F�x}�0�ˍ�/qr0Ў��@�D\R�H�����P���r�[��
�¹�F�{N�>�|�sia�[����=��0^���u0����!�?��0b���43�-����goMc6�v�e��X;Q�˃�'F*Þ�[ܾ�v �CѮ�6��M���Y�9gD7r��q�n�UCN�-e�D��Um�n���]��:�v�dg���[T�^iz�N��;��q��=���ѻ<���!z���t�����������M<C��C�����C��'�~r�׽�}��[ׄ^S)ze��[lG�N�M]��:���I��mD��U-��AdՐӬD4��"�n�\N��!Wa�͋���Sԃ���-n�EK�--yP�P̝�튵�e�ޞ�l��XԃYͲ���d�gΆ��Yw �]v�p��ȍ���؂W�\�}h���B�huӜ���ܔ[X�R�F]X��8����ŃN u���1R��PN�R����(^�J�J�����z�{j���J�z��j"��JJ�e�aKb��U������0��??q��ݤC�sd���jD��t�\�弢��Ge&���	�դ۷=�\W�CK�H��H�V�T�EyShL�ޫШ!����6�İ������C�,	�*!�nDa#V9��9�8d@`�FFNy$���؋&dob}�_�������i�$�ư��I����N�\+kkI���l3�t��m �����$ږ�\�ZH��~�
T��W�����$�d鉃D�~E��2I�I=2tn�ܲ%,;�-�W�r3�5��������v\^N��$�_��T�g�E�'3���Fp�J&[p].�
�|��3�0�Z%S�;/��Ȭ��2�I!�������L>יּ����p1ɡ��9ݩ��4�����?T�J�n�\<u*I����oE
��'�3�ZB������N#�U��~#�7�����󚈴-�$��m�XB�t�팖�|���ԚArn+�7f��}e6���/w�0J���_���O;]㚾�qW�V������{���}���V��:���s�^����^����z��w����P:�J�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/white-circle.png-fd9ec96f5f813bd0d459d50130c980de.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://white-circle.png"
dest_files=[ "res://.import/white-circle.png-fd9ec96f5f813bd0d459d50130c980de.stex" ]

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
      �PNG

   IHDR   @   @   %�  	KIDATx�՘|#�ƳFm3��Lj�\�V���Y�k�<k���jm��{�d��j6I�鯧�=k��������v�|�"������qk6����z�EZVd!�.	��ũ��S�: $ݓ��� p{6�� OH��!=�$�4� �v ���&�pg6��y��Bz���!�
�e��<�J���y<�7��X�'T����c�3�J7���)���Vr������%T/ ��=]:y�I���@�!l���G	!��� <���`	�7�d���BZ3@��ʺ0�s���&��	Jl��S{�׏�b�������J���C'O:@<@@H�o���˳Q��g�/�q��_gg5�= ;B��O6d0Dw��q��$�D ���>�*�,��CpXl�֤��'+Τg�22/1�����9�ǐ��7�TA�!�3 �\���ڼ��Kj��RV9d\,a�v+f�����)��P��`�Sr��GU���w׼���W�0O��	�Q����!�<3���ߍ���1�O�x`��C��;�s����$���a�owR�"9���_��Q�<�y����`�󀵔q���Td*�и��gP���=� Sq��9y�
=ѷ\�.5t����Q�����t�������3E�G�RN2 ���;_K��]%�! ��y/��<(��G�32Tne%6����w��6:�������'Ø� ?Aŀ�E	G1 z����7��\���("�xe%0*AY���!��k��޿6k#��\r��(�>4�2�c<���gP�r�(�8@5Fd��}o2�/>@�m�\�Ť�4�f�����<;]Ӡd=��l����3`>pK�����R�f=F7k�Uy���M[��lY�,a4�ޔ$C�(���O�(�3@����Cn3���C��Z
t�	�N\Ϸgv퀤�!�f���5n� �*z�f�{c���_=jj/8�a�T;Y5������:3_��}�%N��{h{\�z���[�
J�@�>��뤲�Pz�3]E����3�S���0"8�}�&f'f&�~���"a����"M�G �PyJN�u:��tb����[V�e*��[�ci���qr�>
�ARmw�$ԍ+8�ӆ�Φ /5=�nwR��1pdz�P���G8�=[9�\�J.��jg�*$, �e� �����j�撅���V7 غ�����1�����ҙ����WO Ç���$6pi]*֬G����k�7�6�9�<Cb�-����rp�d���G���D��{�6�c#D ]� �%$�a����=� -ض#g�,Ǯ
�&N=�t�3�1L!�)��` �w����S N���x����۾9M8��]�/Me ��/��+�i��v�±V�r�}�$�u�'2`?�X�������������;g!�[��[�H@��@3,_W��U���\��}�x��<>5=���sՁ��@'��_���c,\��U���r��=������_�Kg���Y�~�/_d�2����J����T*KFg&�6L��+x�3�Nk`˶Q�=�,_׭gn�g�%a��˝T�����Y�����:!��a�0*]����ox�8��ظ�����ә�K0���<����; =��K�Z�p�i��u�0�k�.���}Z�,����v ��Цk��p�rZ�7L�X�~��_���F�Z��j��S�8�|7���"���j�����`���w�{� ��R���I�4iEұgW<l}|r$)  ���uR���݀�p7+���hN�T�g�\�̯�mu�ٔ��jEPB�v�w�����-� �0�vr[٠�}vn�U�t�������ء�_~1܅�O�����-I9���@	��PM||ܔ6��� I
���▖z�@Y���H�\T�Q3t4#4}��[� �L��I�l�TF���Tg���s�� ����{O�����l��Ea���� �.]�����qC��6'4�1��{s�����0�~Vص=��{s��n�M[�:˹~��v$E�l `��^I���?���T`� �x𕥙����w-)���c. l�~u�_�ډ�xPxR��W ��\ ع���{wR����4 l���$>lѱop�� ����p���}��M���ۺ(ث{��Oj6����>I����J�p�bQ$�Eh W���~����}�L�@Z4���e@p#��Oa`H#hIPw�sڐ�am`#�&���n� �B����h�@`IR��+ �
N�5b ��L}k� �ABs���0�/��Ǯ���    IEND�B`�            ECFG	      application/config/name      	   CirclePop      application/config/description�      �   Demo of a simple game using visual script.
You must click the circles to 'pop' them in
order to stop their invasion of the screen.     application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     gdnative/singletons          $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      ���=r�>��H>  �?   