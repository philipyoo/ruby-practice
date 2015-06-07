



def measure(iterate = 1)
  timestamp = Time.now
  iterate.times { yield }
  timestamp_end = Time.now
  (timestamp_end - timestamp) / iterate
end