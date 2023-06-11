<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Music</title>
                <style>


body {
  background-image: url(<xsl:value-of select="MENU/wallpaper"/>);
  background-size: cover;
  background-repeat: no-repeat;
}

            .center_music{
            position:fixed !important;
            top:30vh !important;
            left:94vw !important;
            margin-left:1vi !important;            
            height: 50px !important;            
            background-image: url('luca.gif');            
            background-color:transparent !important;
            opacity:50% !important;
            transition-duration:0.23s !important;
            transition-delay:0.12s !important;
            
            
            }
            .center_music:hover {
             left:92vi !important;
             transition-duration:0.23s !important;
             transition-delay:0.12s !important;
             opacity: 100% !important;
            }     

            audio::-webkit-media-controls-panel { 
           background-color:#026391 !important;
           color:red !important;
           width:20px !important;
           opacity:80% !important;
             
             

           }

          audio::-webkit-media-controls-time-remaining-display,
          audio::-webkit-media-controls-current-time-display {
          color:transparent !important;
          }

           audio::-webkit-media-controls-play-button,
           audio::-webkit-media-controls-mute-button {
           filter: invert(100%);
           color:#ffffff !important;
           }
           audio:hover::-webkit-media-controls-play-button,
           audio:hover::-webkit-media-controls-mute-button {
          filter: saturate(50%);
           
           } 


           
                
           
           .Header_Container {
            position:fixed !important;
            top:-0.0% !important;
            left:-5% !important;
            width: 105vw !important;
            padding-left:3vi !important;
            height:7vh !important;
            background-color:#014349  !important;
            opacity: 100% !important;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2) !important;
            padding-top:2vh !important;
            padding-bottom:2vh !important;
            text-align:center !important;
            color: #F0F045 !important;
            font-size:6vh !important;
            font-family: 'front page neue',Arial, Helvetica, sans-serif !important;
            letter-spacing:1vi !important;
            text-transform:uppercase !important;
            overflow:hidden !important;

           } 
           .Main_Container {
            position: Absolute !important;
            width:74% !important;
            background-color:transparent !important;
            height:auto !important;
            top: 10vh !important;
            margin-top:2vh !important;
            margin-left:10% !important;
            margin-right:10% !important;
            overflow:hidden !important;
            padding-left:5vi !important;
            padding-right:5vi !important;
            padding-top:2vi !important;
            padding-bottom:5vi !important;
            opacity:100% !important;
            overflow:hidden !important;
            
            }

            
            @media screen and (min-width: 950px) and (max-width: 1924px) {
            .Form_Container {
             position:relative !important;
             border:0.3px !important;
             border-color:#000000 !important;
             border-style:solid !important;
             background-color:#FBFBEE  !important;
             width:100% !important;
             font-family: 'San Francisco',Arial, Helvetica, sans-serif !important;
             font-size:1.2vi !important;
             opacity:90% !important;
             
             }
             .Form_Container:hover {
             opacity:100% !important;
             
             }


             .content-height {
              height:15vh !important;                 
              background-color:##FBFBEE  !important;
              text-align:center !important;              
              padding-top:2px !important;
              border-width: 2px !important; 
              border-color: #000000 !important;
              
             }             
             }

            @media screen and (min-width: 300px) and (max-width: 950px) {
            .Form_Container {
             position:relative !important;
             border:0.5px !important;
             border-color:#000000 !important;
             border-style:solid !important;
             background-color:#F3F5C2 !important;
             width:100% !important;
             font-family: 'San Francisco',Arial, Helvetica, sans-serif !important;
             font-size:2.2vi !important;
               }             
            }
             .image_size {
              height:2% !important;
              width:3% !important;
              margin-top:22% !important;
              opacity:95% !important;
              filter:saturate(100%);
              filter:invert(10%);
             }
             .image_size:hover {
              opacity:100% !important;
              filter:invert(40%);
              filter:saturate(90%);

             }                   
            </style>
                    <body>
                        <div  class="Main_Container">
                            <div  class="center_music">
                                <xsl:value-of select="audio-player" disable-output-escaping="yes"/>
                                <audio  controls="metadata" loop="yes">
                                    <source  src="./BackgroundM.mp3" type="audio/mpeg"/>
                                </audio>
                            </div>
                            <table  class="Form_Container">
                                <tr  bgcolor="#9acd32" height="20px" style="font-size:105% !important;letter-spacing:0.12vi !important;text-transform:uppercase !important;">
                                    <th  style="text-align:centre">TITLE</th>
                                    <th  style="text-align:centre">PRICE</th>
                                    <th  style="text-align:centre">description</th>
                                    <th  style="text-align:centre">Image</th>
                                </tr>
                                <xsl:for-each select="MENU/CD">
                                    <tr  class="content-height">
                                        <td>
                                            <xsl:value-of select="Variety"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Price"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Details"/>
                                        </td>
                                        <td  class="image_size">
                                            <xsl:value-of select="Image"/>
                                            <xsl:element name="img" class="image_size">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="ImageURL" class="image_size"/>
                                                </xsl:attribute>
                                                <!--                                                Add other attributes for the image if needed -->
                                            </xsl:element>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                        <header  class="Header_Container">Luca's Loaves</header>
                    </body>
                </head>
            </html>
        </xsl:template>
    </xsl:stylesheet>