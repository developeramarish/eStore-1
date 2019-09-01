﻿using Newtonsoft.Json;

namespace QNet.Plugin.Payments.Qualpay.Domain
{
    /// <summary>
    /// Represents a received webhook event details
    /// </summary>
    public class WebhookEvent<TData> where TData : class
    {
        /// <summary>
        /// Gets or sets unique ID generated by Qualpay to identify a webhook
        /// </summary>
        [JsonProperty(PropertyName = "webhook_id")]
        public long? WebhookId { get; set; }

        /// <summary>
        /// Gets or sets webhook receiving timestamp in YYYY-MM-DD HH:mm:ss format
        /// </summary>
        [JsonProperty(PropertyName = "db_timestamp")]
        public string DbTimestamp { get; set; }

        /// <summary>
        /// Gets or sets an event that will trigger the POST request
        /// </summary>
        [JsonProperty(PropertyName = "event")]
        public string Event { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether it's a request from the test environment
        /// </summary>
        [JsonProperty(PropertyName = "is_test")]
        public bool IsTest { get; set; }

        /// <summary>
        /// Gets or sets webhook request data details
        /// </summary>
        [JsonProperty(PropertyName = "data")]
        public TData Data { get; set; }
    }
}