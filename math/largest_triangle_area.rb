# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
    max_area = 0.0
    
    points.each do |point1|
        x1, y1 = point1
        
        points.each do |point2|
            x2, y2 = point2
            
            points.each do |point3|
                x3, y3 = point3
                
                vector1_x = x2 - x1
                vector1_y = y2 - y1
                vector2_x = x3 - x1
                vector2_y = y3 - y1
                
                cross_product = vector1_x * vector2_y - vector2_x * vector1_y
                area = (cross_product).abs / 2.0
                
                max_area = [max_area, area].max
            end
        end
    end
    
    max_area
end