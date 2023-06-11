<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Music</title>
                <style>


body {
  background-image: url(<xsl:value-of select="BUSINESS/backgroundIMG"/>);
  background-size: cover;
  background-repeat: no-repeat;
}

            .center_music{
            position:relative !important;
            top:-60px !important;
            left:110px !important;
            margin-left:1vi !important;  
                   
            padding-top:20px !important;
            height: 10px !important;            
            width:10px !important;
            background-image: url('luca.gif');            
            background-color:transparent !important;
            opacity:90% !important;
            transition-duration:0.23s !important;
            transition-delay:0.12s !important;
            
            
            }
            .center_music:hover {
             left:105px !important;
             transition-duration:0.23s !important;
             transition-delay:0.12s !important;
             opacity: 100% !important;
            }     
            

            /* Hide the default audio controls */


audio {
    
  width:50px !important;
  margin-left:19px !important;
  
  height:50px !important;
  border-radius: 190% 190% 10px 190%;
  background-color: black !important;
  transition-duration:0.23s !important;
  transition-delay:0.12s !important;
  }

audio:hover {
  border-radius: 120px 120px; 
  background-color: #ffffff;
   transition-duration:0.43s !important;
  transition-delay:0.12s !important;
  
}

.play_music {
position:fixed !important;
color:#FCCB04  !important;
background-color:#2E0064  !important;
border-radius:0% 5px 5px 0% !important;
border:1px solid #ffffff;
height:50px !important;
width:140px !important;
left:-45px !important;
top:16.5px !important;
padding-left:60px !important;
padding-right:65px !important;
padding-top:12px !important;
letter-spacing:0.4px !important;
font-size:15px !important;
font-family: 'San Francisco',Arial, Helvetica, sans-serif !important;
font-weight:600 !important;
}
.play_music:hover {
left:-1px !important;
font-family: 'San Francisco',Arial, Helvetica, sans-serif !important;

}

audio::before {
  content: '\25B6'; /* Unicode character for play button */
  font-size: 30px;
  color: blue !important;
  height:10px !important;
  position: absolute;
  top: 10px;
  left: 10px;
  transform: translate(-50%, -50%);
}
          
          audio::-webkit-media-controls-current-time-display,          
          audio::-webkit-media-controls-time-remaining-display,
          audio::-webkit-media-controls-fullscreen-button,
          audio::-webkit-media-controls-volume-slider,
          audio::-webkit-media-controls-timeline-thumb,
          audio::-webkit-media-controls-volume-meter,
          audio::-webkit-media-controls-mute-button,  {
          display: none !important;
          }
          
          audio::-webkit-media-controls-overflow-button  {
          position:absolute !important;
          background-color:green !important;
          width:600px !important;
          height:300px !important;

          }
        audio::-webkit-media-controls-enclosure{
            display: block !important;
            position: absolute !important;
            width:250px !important;
            top:1px !important;
            height:320px !important;


          }

 audio::-webkit-media-controls-play-button{
            display:block !important;
            left:100px !important;
            top:5px !important;
            height:40px !important;
            width:130px !important;
            color: blue !important;
          background-color:transparent !important;  
            }
            audio:hover::-webkit-media-controls-play-button {
          filter: saturate(50%);
          filter: invert(100%);
          filter: contrast(300px) !important;
          color:red !important;
          filter:blur(0.8px) !important;
            transition-duration:0.23s !important;
            transition-delay:0.12s !important;
           } 

            audio::-webkit-media-controls-timeline {
             display:none !important;
             
             
            }

audio[paused]::before {
  content: '\23F8'; /* Unicode character for pause button */
  
}

@media screen and (min-width: 750px) and (max-width: 2150px) {                                
           .Header_Container {
            position:fixed !important;
            top:-0.0% !important;
            left:-5% !important;
            width: 105vw !important;
            padding-left:3vi !important;
            height:12vh !important;
            background-color:#5106AA !important;
            opacity: 100% !important;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2) !important;
            padding-top:2vh !important;
            padding-bottom:2vh !important;
            text-align:center !important;
            color: #F0B807  !important;
            font-size:4.5vi !important;
            font-family: 'LEMON MILK',Arial, Helvetica, sans-serif !important;
            font-weight:800 !important;
            letter-spacing:0.4vi !important;
            text-transform:uppercase !important;
            overflow:hidden !important;

           } 
}


@media screen and (min-width: 300px) and (max-width: 750px) {                                
           .Header_Container {
            position:fixed !important;
            top:0.0% !important;
            left:0% !important;
            width: 105vw !important;
            padding-left:230px !important;                   
            height:12vw !important;
            background-color:#5106AA !important;
            opacity: 100% !important;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2) !important;
            padding-top:2vh !important;
            padding-bottom:2vh !important;            
            color: #F0B807  !important;
            font-size:6.5vmin !important;
            font-family: 'LEMON MILK',Arial, Helvetica, sans-serif !important;
            font-weight:800 !important;
            letter-spacing:0.1vi !important;
            text-transform:uppercase !important;
            overflow:hidden !important;

           } 
}


           .Main_Container {
            position: Absolute !important;
            width:85% !important;
            background-color:transparent !important;
            height:auto !important;
            top: 14vh !important;
            margin-top:2vh !important;
            margin-left:5% !important;
            margin-right:5% !important;
            overflow:hidden !important;
            padding-left:2vi !important;
            padding-right:2vi !important;
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
             background-color:#E3E9FB  !important;
             width:100% !important;
             font-family: 'San Francisco',Arial, Helvetica, sans-serif !important;
             font-size:1.2vi !important;
             opacity:100% !important;
             
             }
             .Form_Container:hover {
             background-color:#ECF0FB !important;
             opacity:100% !important;
             transition-duration:0.23s !important;
            transition-delay:0.12s !important;
             
             }


             .content-height {
              height:12vh !important;                 
              background-color:#E9FFFD30 !important;
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
             .Bryan-image-size {
              position: relative !important;
              border-radius:45% !important;
              height:2% !important;
              width:1.8% !important;
              margin-top:22% !important;
              opacity:95% !important;
              filter:saturate(100%);
              filter:invert(10%);
              transition-duration:0.23s !important;
            transition-delay:0.12s !important;
             }
             .Bryan-image-size:hover {
              
              margin-top:0px !important;
              border-size: 3px !important;
              opacity:100% !important;
              filter:invert(40%);
              filter:saturate(90%);
              transition-duration:0.23s !important;
            transition-delay:0.12s !important;

             }                   
            </style>
                    <body>
                        <div  class="Main_Container">
                                <table  class="Form_Container">
                                <tr  bgcolor="#9acd32" height="20px" style="font-size:105% !important;letter-spacing:0.12vi !important;text-transform:uppercase !important;">
                                    <th  style="text-align:centre">TITLE</th>
                                    <th  style="text-align:centre">PRICE</th>
                                    <th  style="text-align:centre">description</th>
                                    <th  style="text-align:centre">Image</th>
                                </tr>
                                <xsl:for-each select="BUSINESS/CD">
                                    <tr  class="content-height">
                                        <td>
                                            <xsl:value-of select="Productname"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Price"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Details"/>
                                        </td>
                                        <td  class="Bryan-image-size">
                                            <xsl:value-of select="Image"/>
                                            <xsl:element name="img" class="Bryan-image-size">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="Imgsource" class="Bryan-image-size"/>
                                                </xsl:attribute>
                                                <!--                                                Add other attributes for the image if needed -->
                                            </xsl:element>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                        <xsl:for-each select="BUSINESS">
                        <header  class="Header_Container"> <xsl:value-of select="PRODUCT"/></header>
                        
                        
                        <div class="play_music"> 
                        Click here to play the music!
                        <div  class="center_music">
                        
                                <xsl:value-of select="audio-player" disable-output-escaping="yes"/>
                                <audio  controls="metadata" loop="yes">
                                    <source  src="./mp3/MusicB.mp3" type="audio/mpeg"/>
                                </audio>
                                </div>
                            </div>
                        
                        </xsl:for-each>
                    </body>
                </head>
            </html>
        </xsl:template>
    </xsl:stylesheet>