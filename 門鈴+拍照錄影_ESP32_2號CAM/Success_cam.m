<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="aUwqtA*tr%==R|+Gqx75">a</variable>
    <variable type="" id="2z2`Zr/u$/`+laueujI:">buttonState</variable>
    <variable type="" id="8f3,6jN$Av]c],qr*LkB">beforeState</variable>
    <variable type="" id="B2nFOa;,+=vEmJdfS7EE">presstime</variable>
    <variable type="" id="/isXj$7Cwr:ks,%C7Ajx">delay time</variable>
  </variables>
  <block type="mqttcallback" id="2ZTpm(~$.6$A2PmVOtd7" x="-788" y="-688">
    <statement name="NAME1">
      <block type="controls_if" id="Tk^#1vVz%Q6g)zk(=?;t">
        <value name="IF0">
          <shadow type="logic_boolean" id="fkCsZS(s{H0u1#KT-lNp">
            <field name="BOOL">TRUE</field>
          </shadow>
          <block type="logic_compare" id="v,+IVN*3XgyB`ra3I!..">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="mqtttopic" id=",JN]DKun0kYq85IljI%)"></block>
            </value>
            <value name="B">
              <block type="text" id="=5H*|Y5^thqBkypwkEF5">
                <field name="TEXT">testtopic/1</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="controls_if" id="(,)cR1@g~H||lWVt$0EA">
            <value name="IF0">
              <shadow type="logic_boolean" id="AP+=KOA#?a_2Go);@m;o">
                <field name="BOOL">TRUE</field>
              </shadow>
              <block type="logic_compare" id="g!tkCR:8PM.UxQ{2O[T-">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="mqttmessage" id="S{h/iZ3G!cLwLAU_HV=#"></block>
                </value>
                <value name="B">
                  <block type="text" id="T3!upg%/v~V.R(hx4V,/">
                    <field name="TEXT">開門</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="eservosetup" id="}35l1ZJLRA@CP@5*wzIL">
                <comment pinned="false" h="120" w="160">ESP32 CAM 只能有2、4 、12 、 13 、 14 、 15腳位</comment>
                <value name="pin">
                  <shadow type="math_number" id="[:*_C:k2{00|gmxLuuE.">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
                <value name="value">
                  <shadow type="math_number" id="9O(Q+0r`Jnj}r1;D}#:.">
                    <field name="NUM">14</field>
                  </shadow>
                </value>
                <next>
                  <block type="servowrite" id="~fKXewKYZh17^Yc}7f2e">
                    <value name="pin">
                      <shadow type="math_number" id="Fa+RGVu06QlZ}EOW7AU`">
                        <field name="NUM">1</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="60MZhkl*{[?I#2Ijh/x)">
                        <field name="NUM">90</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="arduinodelay" id="t^KkDY5~e,lHjT)d|H)%">
                        <value name="value">
                          <shadow type="math_number" id="{~X@QgTXS)xgUV$;$Y_J">
                            <field name="NUM">0</field>
                          </shadow>
                        </value>
                      </block>
                    </next>
                  </block>
                </next>
              </block>
            </statement>
            <next>
              <block type="controls_if" id="${d.pMuHg4el/X%A=tGS">
                <value name="IF0">
                  <shadow type="logic_boolean" id=")$1okw,IF;Kk6qyN=.W|">
                    <field name="BOOL">TRUE</field>
                  </shadow>
                  <block type="logic_compare" id="NE7PEb95pG8MA~V8_*!P">
                    <field name="OP">EQ</field>
                    <value name="A">
                      <block type="mqttmessage" id="ar/^efF/@Uf;t|;$ba=v"></block>
                    </value>
                    <value name="B">
                      <block type="text" id="G[^9,D9~yF}^UWJ-Me_#">
                        <field name="TEXT">關門</field>
                      </block>
                    </value>
                  </block>
                </value>
                <statement name="DO0">
                  <block type="eservosetup" id="2TMUdK3V=3/EjDlSNr*]">
                    <comment pinned="false" h="120" w="160">ESP32 CAM 只能有2、4 、12 、 13 、 14 、 15腳位</comment>
                    <value name="pin">
                      <shadow type="math_number" id=")zRUxf/WX=AnkY%JdiX%">
                        <field name="NUM">1</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="oOwlqLjdc$sUt|K9ZZ0q">
                        <field name="NUM">14</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="servowrite" id="RHU1KvD25u0c3;?sQIgl">
                        <value name="pin">
                          <shadow type="math_number" id="pfY-DuZUGO[x_wl:YdLp">
                            <field name="NUM">1</field>
                          </shadow>
                        </value>
                        <value name="value">
                          <shadow type="math_number" id="7vGIwQ^R/bbx[8d^qim1">
                            <field name="NUM">0</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="arduinodelay" id="D(#fT|ei+Vrmce[dqF#r">
                            <value name="value">
                              <shadow type="math_number" id="X.L4?{P[Kf*8q-sM0RmW">
                                <field name="NUM">0</field>
                              </shadow>
                            </value>
                          </block>
                        </next>
                      </block>
                    </next>
                  </block>
                </statement>
              </block>
            </next>
          </block>
        </statement>
      </block>
    </statement>
  </block>
  <block type="variables_set" id="ZaHmjs|=xkn.Ty]nf?}W" x="-787" y="-12">
    <field name="VALUE1">int</field>
    <field name="VAR" id="2z2`Zr/u$/`+laueujI:" variabletype="">buttonState</field>
    <value name="VALUE">
      <block type="math_number" id="KTy*W8g`+u9-A~2oMF2H">
        <field name="NUM">1</field>
      </block>
    </value>
    <next>
      <block type="variables_set" id="Sh:gQlxg}rsKMZQ`$3W+">
        <field name="VALUE1">int</field>
        <field name="VAR" id="8f3,6jN$Av]c],qr*LkB" variabletype="">beforeState</field>
        <value name="VALUE">
          <block type="math_number" id="M+d}k~G~_29%XLBOg%{w">
            <field name="NUM">1</field>
          </block>
        </value>
        <next>
          <block type="variables_set" id="/F.Jm#?H]Tl[g9Rk2tDL">
            <field name="VALUE1">int</field>
            <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
            <value name="VALUE">
              <block type="math_number" id="vx7q3DA:P{da=)~%qb(_">
                <field name="NUM">0</field>
              </block>
            </value>
            <next>
              <block type="variables_set" id="gnTR)1sFL]KW73iQkInp">
                <field name="VALUE1">int</field>
                <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                <value name="VALUE">
                  <block type="math_number" id="DaIr+{]z_$ZOoR@cI$[~">
                    <field name="NUM">0</field>
                  </block>
                </value>
                <next>
                  <block type="start" id="Xy?l|NzS{o@,L#xjj!yC">
                    <statement name="setup">
                      <block type="simplewificonnectesp" id="{yGB$XyqX1Qg5Y-:9/~x">
                        <value name="ssid">
                          <shadow type="text3" id=",cHgzEw-be4;qbeQAXd`">
                            <field name="TEXT">YUN</field>
                          </shadow>
                        </value>
                        <value name="pass">
                          <shadow type="text3" id="$k@GGBm,B{jfhDi$yNc2">
                            <field name="TEXT">stareblankly</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="ESP32CAM5" id="W!LR|.M,`/wl7v0y}M{!">
                            <field name="pin1">0</field>
                            <field name="pin">0</field>
                            <next>
                              <block type="mqttsetup" id="2r4VuH/)H3m}6Z]}|k;{">
                                <value name="num1">
                                  <shadow type="text3" id="=ZOy{k@9+nf*Ono9,U7m">
                                    <field name="TEXT">broker.mqttdashboard.com</field>
                                  </shadow>
                                </value>
                                <value name="port">
                                  <shadow type="math_number" id="aMs!=800_x^n;upSSLN7">
                                    <field name="NUM">1883</field>
                                  </shadow>
                                </value>
                                <next>
                                  <block type="mqttsubscribe" id="[:ic[HntfHm4H9?SjjI9">
                                    <value name="num1">
                                      <shadow type="text3" id="LuUUMNv[F$jsX?5(kaT6">
                                        <field name="TEXT">testtopic/1</field>
                                      </shadow>
                                    </value>
                                    <next>
                                      <block type="Line" id="!~B4UkCU2:zU=m;T]jTw">
                                        <value name="num1">
                                          <shadow type="text3" id=";hnt~e=d{9-J.mLA[0eN">
                                            <field name="TEXT">Omu9TNsNdvbj3IgOKM8NeGo00PJVRS5SnW5fGbXmpyb</field>
                                          </shadow>
                                        </value>
                                        <next>
                                          <block type="eservosetup" id="i!cr{J8+Kmk1U=GVB7R9">
                                            <comment pinned="false" h="120" w="160">ESP32 CAM 只能有2、4 、12 、 13 、 14 、 15腳位</comment>
                                            <value name="pin">
                                              <shadow type="math_number" id="`2sd(!0%Jar:Wh}[[W-I">
                                                <field name="NUM">1</field>
                                              </shadow>
                                            </value>
                                            <value name="value">
                                              <shadow type="math_number" id="V./[^qk(~|XeHVyz=J`#">
                                                <field name="NUM">14</field>
                                              </shadow>
                                            </value>
                                            <next>
                                              <block type="servowrite" id="n.;,pZC|~C}er*cS,eRB">
                                                <value name="pin">
                                                  <shadow type="math_number" id="#(5#!RfP1b)Mf-@sqC@)">
                                                    <field name="NUM">1</field>
                                                  </shadow>
                                                </value>
                                                <value name="value">
                                                  <shadow type="math_number" id="~b0piKqPiW5I$D?w_:8X">
                                                    <field name="NUM">0</field>
                                                  </shadow>
                                                </value>
                                              </block>
                                            </next>
                                          </block>
                                        </next>
                                      </block>
                                    </next>
                                  </block>
                                </next>
                              </block>
                            </next>
                          </block>
                        </next>
                      </block>
                    </statement>
                    <statement name="loop">
                      <block type="math_change" id="=T}yf~o{nP.ARiXd?gbg">
                        <field name="VAR" id="2z2`Zr/u$/`+laueujI:" variabletype="">buttonState</field>
                        <value name="DELTA">
                          <shadow type="math_number" id="wJ},D2N}!2%*@z]7f{pc">
                            <field name="NUM">1</field>
                          </shadow>
                          <block type="digital22" id="-Sqokk/-Ceb0sV*QX|D)">
                            <value name="pin">
                              <shadow type="math_number" id="6;97#x#07#a.q(:;1dis">
                                <field name="NUM">15</field>
                              </shadow>
                            </value>
                          </block>
                        </value>
                        <next>
                          <block type="controls_if" id="OHsS)wDVuvYbd)DZstdW">
                            <value name="IF0">
                              <shadow type="logic_boolean" id="f/|gjK*I269J~*J9h;@;">
                                <field name="BOOL">TRUE</field>
                              </shadow>
                              <block type="logic_operation" id="+[o-vSH8A^89K54L5:6Y">
                                <field name="OP">AND</field>
                                <value name="A">
                                  <block type="logic_compare" id="JVL}gDW7j5Hxaa3D=%Sx">
                                    <field name="OP">EQ</field>
                                    <value name="A">
                                      <block type="variables_get" id="QQ3l.f,t_%O7WU?RbVRf">
                                        <field name="VAR" id="2z2`Zr/u$/`+laueujI:" variabletype="">buttonState</field>
                                      </block>
                                    </value>
                                    <value name="B">
                                      <block type="math_number" id="xG^/]q@:fy9ER4BP[k4J">
                                        <field name="NUM">0</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                                <value name="B">
                                  <block type="logic_compare" id=")3c9VXz?p~#BN^!efNkf">
                                    <field name="OP">EQ</field>
                                    <value name="A">
                                      <block type="digital22" id="UDo?Rc}9DaRuEt8yWkOD">
                                        <value name="pin">
                                          <shadow type="math_number" id="KM^Aar_ZFAWetHP$E$d3">
                                            <field name="NUM">15</field>
                                          </shadow>
                                        </value>
                                      </block>
                                    </value>
                                    <value name="B">
                                      <block type="math_number" id="Yc47-fh]If0/-cfeD=w!">
                                        <field name="NUM">0</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                              </block>
                            </value>
                            <statement name="DO0">
                              <block type="math_change" id="9|[fKMZ:XEQC9e+F:u}L">
                                <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                                <value name="DELTA">
                                  <shadow type="math_number" id="e!LqG,]v@c.Sk1B9-%NP">
                                    <field name="NUM">0</field>
                                  </shadow>
                                </value>
                                <next>
                                  <block type="math_change" id="#ICjck}5}0TZ7VE)tykA">
                                    <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                    <value name="DELTA">
                                      <shadow type="math_number" id="fjop{tnf;dSN#D(YSvm-">
                                        <field name="NUM">1</field>
                                      </shadow>
                                      <block type="math_arithmetic" id="xF7.==9%c}+j1#n}inn}">
                                        <field name="OP">ADD</field>
                                        <value name="A">
                                          <shadow type="math_number" id="YCg9Dd#ISG8#eW50M=jR">
                                            <field name="NUM">1</field>
                                          </shadow>
                                          <block type="variables_get" id="uhc(ukL7PH8o9BGtLh5c">
                                            <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                          </block>
                                        </value>
                                        <value name="B">
                                          <shadow type="math_number" id="Z}Od1/3D([wXZ8hxd|#{">
                                            <field name="NUM">1</field>
                                          </shadow>
                                        </value>
                                      </block>
                                    </value>
                                    <next>
                                      <block type="serial_write1" id="e~01WW0!~KsL/78.,$$P">
                                        <value name="value">
                                          <shadow type="text" id="h35kNK0CVyJ@NyLUl?q?">
                                            <field name="TEXT">Hello</field>
                                          </shadow>
                                          <block type="variables_get" id="S)#=o4/kp-13u=~(ev%J">
                                            <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                          </block>
                                        </value>
                                        <next>
                                          <block type="controls_if" id="HhAP~(`#)`*JW)qW:cfA">
                                            <comment pinned="false" h="120" w="160">情況2：當門鈴被按下1次，如果住戶在家的話就能夠在家先透過ESP32確認門外客人身分</comment>
                                            <value name="IF0">
                                              <shadow type="logic_boolean" id="D{bu0bG[q)n3W%.cDx9T">
                                                <field name="BOOL">TRUE</field>
                                              </shadow>
                                              <block type="logic_compare" id="(7OsAX*L%$Jhc%tHATw)">
                                                <field name="OP">EQ</field>
                                                <value name="A">
                                                  <block type="variables_get" id="1,GD%wY$c%PL6H[TH3zE">
                                                    <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                                  </block>
                                                </value>
                                                <value name="B">
                                                  <block type="math_number" id="oiaPQPFfq!,TLe;-eh,7">
                                                    <field name="NUM">1</field>
                                                  </block>
                                                </value>
                                              </block>
                                            </value>
                                            <statement name="DO0">
                                              <block type="serial_write1" id="#doWZEc8y.Adn3d^yTJ_">
                                                <value name="value">
                                                  <shadow type="text" id="h35kNK0CVyJ@NyLUl?q?">
                                                    <field name="TEXT">即將傳送Line Notify</field>
                                                  </shadow>
                                                </value>
                                                <next>
                                                  <block type="Line3" id="knx,x2p5t%7Dm-{~lbW(">
                                                    <value name="num1">
                                                      <shadow type="text3" id="2Ja;vpb4~X!KS|P,.uKA">
                                                        <field name="TEXT">您有訪客：http://172.20.10.11:81/stream</field>
                                                      </shadow>
                                                    </value>
                                                  </block>
                                                </next>
                                              </block>
                                            </statement>
                                            <next>
                                              <block type="controls_if" id="o1C3]MN!:{Do6A]0IJ*d">
                                                <comment pinned="false" h="120" w="160">情況3：當門鈴被按下三次以上，代表家中可能沒有人，此時住戶能夠透過ESP32拍的照片判斷是否為信任的人，如果為信任的人，可透過MQTT開門。</comment>
                                                <value name="IF0">
                                                  <shadow type="logic_boolean" id="`:u~T0oRPKAh_TX1WfRZ">
                                                    <field name="BOOL">TRUE</field>
                                                  </shadow>
                                                  <block type="logic_compare" id="v63DZO,zD(xeYl?,?;C1">
                                                    <field name="OP">GTE</field>
                                                    <value name="A">
                                                      <block type="variables_get" id="}$EO:O)z4D#I8!R{1U.@">
                                                        <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                                      </block>
                                                    </value>
                                                    <value name="B">
                                                      <block type="math_number" id="1C$Uy!x6$t#l-+:1zQVe">
                                                        <field name="NUM">3</field>
                                                      </block>
                                                    </value>
                                                  </block>
                                                </value>
                                                <statement name="DO0">
                                                  <block type="controls_repeat_ext" id="?^hPoFP%zcFN-mDn_Fl{">
                                                    <value name="TIMES">
                                                      <shadow type="math_number" id="?9Pt|SN;;621vIrKK+Wy">
                                                        <field name="NUM">2</field>
                                                      </shadow>
                                                    </value>
                                                    <statement name="DO">
                                                      <block type="ESP32CAM2" id="g64v`0hjBo^b-5c!V8+^">
                                                        <next>
                                                          <block type="pocketimagewrite1" id="J}4(w,g[+oAstF024eBv">
                                                            <value name="num1">
                                                              <shadow type="text3" id="`V`BH~B(R|}xKc+DSzH]">
                                                                <field name="TEXT">/photo.jpg</field>
                                                              </shadow>
                                                            </value>
                                                            <next>
                                                              <block type="serial_write1" id="vlwX5.SA@?rtyaA8%Z9~">
                                                                <value name="value">
                                                                  <shadow type="text" id="D@qWg_c%X^oADFkXoYhj">
                                                                    <field name="TEXT">即將傳送Line Notify</field>
                                                                  </shadow>
                                                                </value>
                                                                <next>
                                                                  <block type="Line2" id="+3OH0Ldqx/JJVhK(/Hqz">
                                                                    <value name="num1">
                                                                      <shadow type="text3" id="D=U!-vO+Hi#Gv!eQKosr">
                                                                        <field name="TEXT">您有訪客現在在家門外</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="num2">
                                                                      <shadow type="text3" id="Iw`9A4-x2-`_~.uM?]S!">
                                                                        <field name="TEXT">/photo.jpg</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="arduinodelay" id="l@`@0Zg}4t=CaO7,Fmya">
                                                                        <value name="value">
                                                                          <shadow type="math_number" id="^dmuEd52}.f!6}MH+/nn">
                                                                            <field name="NUM">1000</field>
                                                                          </shadow>
                                                                        </value>
                                                                      </block>
                                                                    </next>
                                                                  </block>
                                                                </next>
                                                              </block>
                                                            </next>
                                                          </block>
                                                        </next>
                                                      </block>
                                                    </statement>
                                                    <next>
                                                      <block type="serial_write1" id="x4FUIB+XxV+@L?3@}{XT">
                                                        <value name="value">
                                                          <shadow type="text" id="~[Zim{%je1NUeR/c,`h-">
                                                            <field name="TEXT">即將傳送Line Notify</field>
                                                          </shadow>
                                                        </value>
                                                        <next>
                                                          <block type="Line3" id="TZErkm8D[f4FmIT$`-^C">
                                                            <value name="num1">
                                                              <shadow type="text3" id="WX^f#zl6jOpAG%@rbwYm">
                                                                <field name="TEXT">如果是您信任的人，請點擊以下連接幫他開門</field>
                                                              </shadow>
                                                            </value>
                                                            <next>
                                                              <block type="Line3" id=",7@]#x-CL/b,u~)u(?9|">
                                                                <value name="num1">
                                                                  <shadow type="text3" id="zika-tG|0+U7]eG+/$xg">
                                                                    <field name="TEXT">https://www.hivemq.com/demos/websocket-client/</field>
                                                                  </shadow>
                                                                </value>
                                                              </block>
                                                            </next>
                                                          </block>
                                                        </next>
                                                      </block>
                                                    </next>
                                                  </block>
                                                </statement>
                                              </block>
                                            </next>
                                          </block>
                                        </next>
                                      </block>
                                    </next>
                                  </block>
                                </next>
                              </block>
                            </statement>
                            <next>
                              <block type="math_change" id="mR-UeFML*DPiiR_Z%U0L">
                                <field name="VAR" id="8f3,6jN$Av]c],qr*LkB" variabletype="">beforeState</field>
                                <value name="DELTA">
                                  <shadow type="math_number" id="5sWWI?Ui||Ae#$s5!t]w">
                                    <field name="NUM">1</field>
                                  </shadow>
                                  <block type="variables_get" id="oTXyp4dVoG;siUdDur|w">
                                    <field name="VAR" id="2z2`Zr/u$/`+laueujI:" variabletype="">buttonState</field>
                                  </block>
                                </value>
                                <next>
                                  <block type="arduinodelay" id="~WC|`q~EmE^,uOJm,P1I">
                                    <value name="value">
                                      <shadow type="math_number" id="A2_Gl#8QGwWOKj}]0.N2">
                                        <field name="NUM">1000</field>
                                      </shadow>
                                    </value>
                                    <next>
                                      <block type="math_change" id="@7M1GX}aE-vSdG.K6CvF">
                                        <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                                        <value name="DELTA">
                                          <shadow type="math_number" id="gTSKP%}cG_0dI?!MT4uj">
                                            <field name="NUM">1</field>
                                          </shadow>
                                          <block type="math_arithmetic" id="j9)`:^wvchw`2RlBp+0W">
                                            <field name="OP">ADD</field>
                                            <value name="A">
                                              <shadow type="math_number" id="c+0~?sy7:c~H:rLV]N[h">
                                                <field name="NUM">1</field>
                                              </shadow>
                                              <block type="variables_get" id="F_y!*)G]_Cl1pBl9vlDB">
                                                <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                                              </block>
                                            </value>
                                            <value name="B">
                                              <shadow type="math_number" id="rg5kp.+NlR6/a(f]aH2r">
                                                <field name="NUM">1</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </value>
                                        <next>
                                          <block type="serial_write1" id="9FZM?kB63A}eS3C$tb;+">
                                            <value name="value">
                                              <shadow type="text" id="#^zD;,bIYEFFn-hQ]NJx">
                                                <field name="TEXT">即將傳送Line Notify</field>
                                              </shadow>
                                              <block type="variables_get" id="2.nZ?GhfE?;S2t`4mhvH">
                                                <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                                              </block>
                                            </value>
                                            <next>
                                              <block type="controls_if" id="e/-kbN!Ba-V.3;nS[?5g">
                                                <value name="IF0">
                                                  <shadow type="logic_boolean" id="@g?4V88(G`0kC9m^Rsf|">
                                                    <field name="BOOL">TRUE</field>
                                                  </shadow>
                                                  <block type="logic_compare" id="7s~$H+VkS6JIVu%/@@lA">
                                                    <field name="OP">EQ</field>
                                                    <value name="A">
                                                      <block type="variables_get" id="8m6S6~1s#mG+pC1]6!Q~">
                                                        <field name="VAR" id="/isXj$7Cwr:ks,%C7Ajx" variabletype="">delay time</field>
                                                      </block>
                                                    </value>
                                                    <value name="B">
                                                      <block type="math_number" id="Ygm@!b-KeT)q]FKv0han">
                                                        <field name="NUM">60</field>
                                                      </block>
                                                    </value>
                                                  </block>
                                                </value>
                                                <statement name="DO0">
                                                  <block type="math_change" id="cyNm7_k(2?2M^KVjkaMX">
                                                    <field name="VAR" id="B2nFOa;,+=vEmJdfS7EE" variabletype="">presstime</field>
                                                    <value name="DELTA">
                                                      <shadow type="math_number" id="gTSKP%}cG_0dI?!MT4uj">
                                                        <field name="NUM">0</field>
                                                      </shadow>
                                                    </value>
                                                  </block>
                                                </statement>
                                              </block>
                                            </next>
                                          </block>
                                        </next>
                                      </block>
                                    </next>
                                  </block>
                                </next>
                              </block>
                            </next>
                          </block>
                        </next>
                      </block>
                    </statement>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </next>
  </block>
</xml>