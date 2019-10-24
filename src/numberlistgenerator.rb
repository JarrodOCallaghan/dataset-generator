def numberlistgenerator length, startnumber, endnumber
  currentTime = Time.now.strftime('%Y-%m-%d %H-%M-%S')
  file = File.new("./Datasets/DATASET NUM length " + length.to_s + " TIME "+ currentTime.to_s + ".txt","w")
  x = 0
  while x < length
    file.puts(rand(startnumber..endnumber))
    x = x + 1
  end
  file.close
end
