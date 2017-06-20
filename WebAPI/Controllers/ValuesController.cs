using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Threading.Tasks;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Queue;

namespace WebAPI.Controllers
{
    public class ValuesController : ApiController
    {

        static CloudQueue cloudQueueOne;
    
        // Connection to QueueOne and QueueTwo
        public static void ConnectToStorageQueue()
        {
            var connectionString = "DefaultEndpointsProtocol=https;AccountName=storagenumvem;AccountKey=JMGSFPJU6pWtFGktyE4hRf3xmqca+boDbakLU7BcGXAHLXv6rrEHKllUFat7VWlW3XuL2sBbRz1zjHRm7t74tQ==;EndpointSuffix=core.windows.net";
            CloudStorageAccount cloudStorageAccount;

            if (!CloudStorageAccount.TryParse(connectionString, out cloudStorageAccount))
            {
                Console.WriteLine("Expected connection string 'Azure Storage Account to be a valid Azure Storage Connection String.");
            }

            var cloudQueueClient = cloudStorageAccount.CreateCloudQueueClient();
            cloudQueueOne = cloudQueueClient.GetQueueReference("queueone");
      
            cloudQueueOne.CreateIfNotExists();
        }

        //PUT message in QueueOne
        private string PutMessageToQueueOne(String MessageText)
        {
            ConnectToStorageQueue();
            var message = new CloudQueueMessage(MessageText);
            cloudQueueOne.AddMessage(message);
            return "Message add "+MessageText+" in QueueOne";

        }

             
        // GET api/values
        public IEnumerable<string> Get()
        {
            return new string[] { "value 1", "value 2"};
        }

        // GET api/values/5
        public string Get(string id)
        {
            return PutMessageToQueueOne(id);
        }

        // POST api/values
        public string Post([FromBody]string value)
        {
            return PutMessageToQueueOne(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }
    }
}
