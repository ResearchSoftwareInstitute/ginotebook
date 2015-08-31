var DepthMapParsedResult;
var THREE_real_ratio = 10;//specify the ratio of 1 unit in THREE to 1 unit in real world, for visualization purpose

get_latlng = function (parameters) {

    'use strict';

    var _parameters = parameters || {};

	var url = "http://maps.google.com/cbk?output=json&cb_client=maps_sv&v=4&dm=1&pm=1&ph=1&hl=en&panoid=" + cur_panoId;
	
	this.req_decode_use_depthmap = function(callback){
		var self = this;
		var args = Array.prototype.slice.call(arguments, 1);
		if(DepthMapParsedResult == undefined)//when already made an request and have depthMapParsedResult
		{
			$.ajax({
                url: url,
                dataType: 'jsonp'
			})
			.done(function(data, textStatus, xhr) {
				var decoded;
				try {
					decoded = self.decode(data.model.depth_map);
					DepthMapParsedResult = self.parse(decoded);
					args.unshift(DepthMapParsedResult);
					return callback.apply(this, args);
				} catch(e) {
					console.error("Error loading depth map for pano " + cur_panoId + "\n" + e.message + "\nAt " + e.filename + "(" + e.lineNumber + ")");
				}
			})
			.fail(function(xhr, textStatus, errorThrown) {
				console.error("Request failed: " + url + "\n" + textStatus + "\n" + errorThrown);
				alert("Request failed: " + url + "\n" + textStatus + "\n" + errorThrown);
			})
		}
		else
		{
			args.unshift(DepthMapParsedResult);
			return callback.apply(this, args);
		}
	}
	
	this.setDepthMap = function(){
		var self = this;
		if(DepthMapParsedResult == undefined)//when already made an request and have depthMapParsedResult
		{
			$.ajax({
                url: url,
                dataType: 'jsonp'
			})
			.done(function(data, textStatus, xhr) {
				var decoded;
				try {
					decoded = self.decode(data.model.depth_map);
					DepthMapParsedResult = self.parse(decoded);
				} catch(e) {
					console.error("Error loading depth map for pano " + cur_panoId + "\n" + e.message + "\nAt " + e.filename + "(" + e.lineNumber + ")");
				}
			})
			.fail(function(xhr, textStatus, errorThrown) {
				console.error("Request failed: " + url + "\n" + textStatus + "\n" + errorThrown);
				alert("Request failed: " + url + "\n" + textStatus + "\n" + errorThrown);
			})
		}
	}
	
    this.decode = function(rawDepthMap) {
        var self = this,
                   i,
                   compressedDepthMapData,
                   depthMap,
                   decompressedDepthMap;

        // Append '=' in order to make the length of the array a multiple of 4
        while(rawDepthMap.length %4 != 0)
            rawDepthMap += '=';

        // Replace '-' by '+' and '_' by '/'
        rawDepthMap = rawDepthMap.replace(/-/g,'+');
        rawDepthMap = rawDepthMap.replace(/_/g,'/');

        // Decode and decompress data
        compressedDepthMapData = $.base64.decode(rawDepthMap);
        decompressedDepthMap = zpipe.inflate(compressedDepthMapData);

        // Convert output of decompressor to Uint8Array
        depthMap = new Uint8Array(decompressedDepthMap.length);
        for(i=0; i<decompressedDepthMap.length; ++i)
            depthMap[i] = decompressedDepthMap.charCodeAt(i);
        return depthMap;
    }

    this.parseHeader = function(depthMap) {
        return {
            headerSize : depthMap.getUint8(0),
            numberOfPlanes : depthMap.getUint16(1, true),
            width: depthMap.getUint16(3, true),
            height: depthMap.getUint16(5, true),
            offset: depthMap.getUint16(7, true)
        };
    }
    
    this.parsePlanes = function(header, depthMap) {
        var planes = [],
            indices = [],
            i,
            n = [0, 0, 0],
            d,
            byteOffset;

        for(i=0; i<header.width*header.height; ++i) {
            indices.push(depthMap.getUint8(header.offset + i));
        }

        for(i=0; i<header.numberOfPlanes; ++i) {
            byteOffset = header.offset + header.width*header.height + i*4*4;
            n[0] = depthMap.getFloat32(byteOffset, true);
            n[1] = depthMap.getFloat32(byteOffset + 4, true);
            n[2] = depthMap.getFloat32(byteOffset + 8, true);
            d    = depthMap.getFloat32(byteOffset + 12, true);
            planes.push({
                n: n.slice(0),
                d: d
            });
        }

        return { planes: planes, indices: indices };
    }
	
    this.parse = function(depthMap) {
        var self = this,
            depthMapData,
            header,
            data,
            depthMap;

        depthMapData = new DataView(depthMap.buffer);
        header = self.parseHeader(depthMapData);
        data = self.parsePlanes(header, depthMapData);
		return {
			hearder: header,
			data: data
		};
    }
	
};

